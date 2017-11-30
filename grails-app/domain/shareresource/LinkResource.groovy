package shareresource

class LinkResource extends Resource{
    String url
    static belongsTo = [resource: Resource]
    static constraints = {

    }
}
