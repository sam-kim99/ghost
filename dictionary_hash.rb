require 'digest'

def hash_file(file_path)
    file_content = File.read(file_path)
    hash = Digest::SHA256.hexdigest(file_content)
    return hash
end


