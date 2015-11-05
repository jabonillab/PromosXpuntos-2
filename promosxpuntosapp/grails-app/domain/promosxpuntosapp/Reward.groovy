package CLASSES

class Reward{


    String campaignName
    String description
    byte [] picture
    Date dueDateCampaign
    Date creationDateCampaign
    int point

    static belongsTo = [
            customer : Customer,
            requesterUsers : StandardUser
    ]

    static constraints = {
        campaignName(blank: false,unique: true,minSize: 5,maxSize: 30)
        description(blank: false, unique: true, minSize: 30)
        picture(maxSize: 3145728 /* 16K */)
        point(blank:false, min: 1)
        creationDateCampaign(nullable: true)
        dueDateCampaign(blank: false)
    }



}