class AboutsController < ApplicationController
    def index
        @abouts = About.all
    end

    def new
        @about = About.new
    end

    def create
        @about = About.new(about_params)

        if @about.save 
            redirect_to abouts_path
        else
            render 'new'
        end
    end

    private

    def about_params
        params.require(:about).permit(:companyName,
            :invoiceApplicable,
            :invoiceIssueUnit,
            :phoneNumber,
            :fax,
            :postalCode,
            :headOfficeAddressCityStreet,
            :headOfficeAddressBuilding,
            :representativeName,
            :emailForExtension,
            :ccMailingList,
            :bccMailingList,
            :nameForAccountingDocs,
            :emailForAccountingDocs,
            :ccMailingListAccounting,
            :bccMailingListAccounting)
    end

end
