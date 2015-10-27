package sc

import grails.transaction.Transactional
import java.nio.charset.*
import sc.model.*
import java.text.*

@Transactional
class ImportCSVService {
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
					def sexo = lineArray[14] == 0 ? Sexo.MASCULINO : Sexo.FEMININO
					
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

				    if (!Pessoa.findByNome(nome)) {
				    	
						def pessoa = new Pessoa(nome:nome,
												nivelDeCrescimento:nivelDeCrescimento, 
												estadoCivil: EstadoCivil.SOLTEIRO, 
												sexo: sexo,
												procedencia: Procedencia.CONVERTEU_SE_EM_NOSSO_MEIO,
												grupoCaseiro:grupoCaseiro,
												integracao:integracao,
												nascimento:nascimento,
												apelido:apelido
											   ).save(failOnError:true)

						pessoaMap[lineArray[0]] = pessoa.id
				    }

					
				}
			}
			println "end"
			fileReader.close();
		} catch (e) {
			println e.printStackTrace()
		}
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
	