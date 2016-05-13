package sc

import grails.transaction.Transactional
import java.nio.charset.*
import sc.model.*
import sc.acesso.*
import java.text.*
import java.util.Random

@Transactional
class ImportCSVService {
	Random randomGenerator = new Random()
    def importCampinaGrande(contextPath) {
    	

    	/*
		5642,
		Adriana Cláudia R. A. Nunes,
		Elane,
		,
		Novo em Fundamentos,
		5640,
		12/29/1978,
		5/1/2005,
		Casado com Cônjuge Convertido,
		Campina Grande1,
		Monte Santo,
		,
		Adriana,
		Veio a nós convertido,
		1,
		Cozinheiro,
		O-,
		"rua sinhazinha de oliveira, 686",
		Monte Santo,
		(83) 88715848,
		adria3104@hotmail.com

    	*/
    	Pessoa.deleteAll()
    	GrupoCaseiro.deleteAll()
    	Setor.deleteAll()
    	Igreja.deleteAll()

    	def igreja = Igreja.findByCidade("Campina Grande")
    	if (!igreja) {
    		igreja = new Igreja(cidade:"Campina Grande", estado:"Paraiba", pais:"Brasil").save(flush:true)
    	}

    	def pessoaMap = [:]
    	println "importing Profissoes..."
    	try {
			File file2 = new File(contextPath + File.separator + "profissoes.txt")
			FileReader fileReader2 = new FileReader(file2);
			BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file2), Charset.forName("UTF-8")));
			StringBuffer stringBuffer2 = new StringBuffer();
			String line2;

			while ((line2 = bufferedReader2.readLine()) != null) {
				def lineString = line2.trim()
				if (lineString && !lineString.isEmpty()) {
					new Profissao(nome:lineString).save(flush:true)
				}
			}
			fileReader2.close();
		}
		catch(Exception e) {
			e.printStackTrace()
		}
		println "importing Profissoes - FINISHED"

		println "importing Pessoas..."
		File file = new File(contextPath + File.separator + "CampinaGrande.tsv")
		try {
			FileReader fileReader = new FileReader(file);
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), Charset.forName("UTF-8")));
			StringBuffer stringBuffer = new StringBuffer();
			String line;
			bufferedReader.readLine();

			while ((line = bufferedReader.readLine()) != null) {
				def lineArray = line.split('\t')
				if (lineArray.length in [19,20,21]) {
					def setorString = lineArray[9].trim()
					def setor = Setor.findByNome(setorString)
					if (!setor) {
						setor = new Setor(nome:setorString, igreja:igreja).save(flush:true)
					}
					def grupoCaseiroString = lineArray[10].trim()
					def grupoCaseiro = GrupoCaseiro.findByNome(grupoCaseiroString)
					if (!grupoCaseiro) {
						grupoCaseiro = new GrupoCaseiro(nome:grupoCaseiroString, setor:setor).save(flush:true)
					}

					def nome = lineArray[1].trim()
					def sexo = lineArray[14].trim() == '0' ? Sexo.MASCULINO : Sexo.FEMININO
					
				    DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
					Date nascimento = null
					Date integracao = null

					try {
						def nascimentoString = lineArray[6]
					    nascimento =  df.parse(nascimentoString);  
					    if (!nascimento) {
					    	nascimento = new Date()
					    }
					} catch (e) {
						nascimento = new Date()
					}

					try {
						def integracaoString = lineArray[7]
					    integracao = df.parse(integracaoString);  
					    if (!integracao) {
					    	integracao = new Date()
					    }
					} catch (e) {
						integracao = new Date()
					}

				    def apelido = lineArray[12].trim()

				    def nivelDeCrescimento = NivelDeCrescimento.getNivelPeloNome(lineArray[4].trim())
				    if (!nivelDeCrescimento) {
				    	nivelDeCrescimento = NivelDeCrescimento.NOVO_EM_FUNDAMENTOS
				    }

				    def procedencia = Procedencia.getProcedenciaPeloNome(lineArray[13].trim())
				    if (!procedencia) {
				    	procedencia = Procedencia.OUTRAS
				    }

				    if (!Pessoa.findByNome(nome)) {
				    	
				    	String endereco = lineArray[17].trim()
				    	String bairro = lineArray[18].trim()
				    	String fone = ""
				    	String email = ""
				    	def fones = []
				    	if(lineArray.length > 19) {
					    	fone = lineArray[19].trim()
					    	fones << fone
					    	if(lineArray.length > 20) {
					    		email = lineArray[20].trim()
					    	}
					    }

					    def profissao = Profissao.findByNome(lineArray[15].trim())
					    def sangue = sc.Sangue.getSanguePeloNome(lineArray[16].trim())
					    
					    def userLogin = email
				      	if (userLogin?.isEmpty() || !userLogin) {
				      		userLogin = nome.split(' ')[0].toLowerCase() + '_' + randomGenerator.nextInt(5000);
				      	}
				      	def senha = 'sc' + '_' + randomGenerator.nextInt(5000);
					    def usuario = new Usuario(login:userLogin, senha:senha).save(flush:true)
					    
						def pessoa = new Pessoa(nome:nome,
												nivelDeCrescimento:nivelDeCrescimento, 
												estadoCivil: EstadoCivil.SOLTEIRO, 
												sexo: sexo,
												procedencia: procedencia,
												grupoCaseiro:grupoCaseiro,
												integracao:integracao,
												nascimento:nascimento,
												apelido:apelido,
												endereco: new Endereco(rua:endereco),
												bairro:bairro,
												telefones:fones,
												email:email,
												profissao:profissao,
												sangue:sangue,
												situacao:Situacao.ATIVO,
												usuario: usuario
											   ).save(failOnError:true, flush:true)
						//Generating user
					    pessoa.save(flush:true)

					    //-------------------------------
						try {
							Integer cod = Integer.parseInt(lineArray[0].trim())
							Integer codConjuge = Integer.parseInt(lineArray[5].trim())

							pessoaMap[cod] = [pessoaObj:pessoa, nomeComp:lineArray[3].trim(), nomeDiscipulador:lineArray[2], codConjuge:codConjuge]
						}
						catch(Exception e) {
							
						}
						
						
						
				    }

					
				}
			}
			fileReader.close();
			println "importing Pessoas - FINISHED"
		} catch (e) {
			println e.printStackTrace()
		}
		println "linking relations between Pessoas..."
		def pessoaCount = pessoaMap.size()
		def i = 0
		def pessoaLinked = 0
		for(Integer pessoaTVS_ID_1 : pessoaMap.keySet()) {
			for(Integer pessoaTVS_ID_2 : pessoaMap.keySet()) {
				if (pessoaMap[pessoaTVS_ID_1].codConjuge == pessoaTVS_ID_2) {
					pessoaMap[pessoaTVS_ID_1].pessoaObj.conjuge = pessoaMap[pessoaTVS_ID_2].pessoaObj
					pessoaMap[pessoaTVS_ID_1].pessoaObj.save(flush:true)
					break
				}
			}
			pessoaMap[pessoaTVS_ID_1].pessoaObj.companheiro = Pessoa.findByNomeIlikeAndGrupoCaseiro("%" + pessoaMap[pessoaTVS_ID_1].nomeComp + "%", pessoaMap[pessoaTVS_ID_1].pessoaObj.grupoCaseiro)
			pessoaMap[pessoaTVS_ID_1].pessoaObj.discipulador = Pessoa.findByNomeIlikeAndGrupoCaseiro("%" + pessoaMap[pessoaTVS_ID_1].nomeDiscipulador + "%", pessoaMap[pessoaTVS_ID_1].pessoaObj.grupoCaseiro)
			pessoaMap[pessoaTVS_ID_1].pessoaObj.save(flush:true)
			pessoaLinked++
			i++
			if(pessoaLinked == 9) {
				pessoaLinked = 0
				def percent = (i/pessoaCount) * 100
				println "Completed: ${percent}%"
			}
		}

		println "linking relations between Pessoas - FINISHED"
		println "<<<<<<<<<<< -- FINISHED SCRIPT -- >>>>>>>>>>>>"
		println "Igrejas: ${Igreja.count()}"
		println "Setores: ${Setor.count()}"
		println "Grupos Caseiros: ${GrupoCaseiro.count()}"
		println "Pessoas: ${Pessoa.count()}"
		println "Usuarios: ${Usuario.count()}"
		println "Profissao: ${Profissao.count()}"
		println "<<<<<<<<<<< -- --------------- -- >>>>>>>>>>>>"

    }
    def columns = ["cod":0,
			    	"Nome":1,
			    	"Discipulador":2,
			    	"Compa":3,
			    	"Crescimento":4,
			    	"CodConjuge":5,
			    	"DNascimento":6,
			    	"DtIntegracao":7,
			    	"EstCivil":8,
			    	"Setor":9,
			    	"GrCaseiro":10,
			    	"NumFilhos":11,
			    	"Apelido":12,
			    	"Procedencia":13,
			    	"Sexo":14,
			    	"Profissao":15,
			    	"TS":16,
			    	"Endereco":17,
			    	"Bairro":18,
			    	"Fone":19,
			    	"Email":20
    			]
}
	