sala = Sala.create(nome: 'DCODE')

JSON.parse(File.read('db/alunos.json'))['alunos'].each do |aluno|
  Aluno.create(nome: aluno['nome'], rm: aluno['rm'], sala: sala)
end
