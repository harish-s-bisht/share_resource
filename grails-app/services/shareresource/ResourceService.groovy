package shareresource

import grails.transaction.Transactional

@Transactional
class ResourceService {

    def serviceMethod() {

    }
    def create(Resource resource){

        resource.save()

    }
}
