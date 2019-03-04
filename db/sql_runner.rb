require('pg')

class SqlRunner

def self.run(sql, values =[])
  begin
    # db = PG.connect({
    #   dbname: 'd1scmrcpqdubvj',
    #   host: 'ec2-54-225-227-125.compute-1.amazonaws.com',
    #   port: 5432,
    #   user: 'axpmkfdwgpmzpr',
    #   password: '41d2dff35e0a917619c364217aee4a6c18d387888475cc7b88a5c09126ecc32a'
    #   })
    db = PG.connect({
      dbname: 'inventory',
      host: 'localhost'
      })
    db.prepare('query',sql)
    result = db.exec_prepared('query', values)
  ensure
    db.close() if db != nil
  end
    return result
end

end
