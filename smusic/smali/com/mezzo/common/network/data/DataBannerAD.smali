.class public Lcom/mezzo/common/network/data/DataBannerAD;
.super Ljava/lang/Object;
.source "DataBannerAD.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private ad_group_no:Ljava/lang/String;

.field private ad_no:Ljava/lang/String;

.field private bg_color:Ljava/lang/String;

.field private click_action_type:Ljava/lang/String;

.field private click_api:Ljava/lang/String;

.field private click_option:Ljava/lang/String;

.field private click_tracking_api:Ljava/lang/String;

.field private cmp_no:Ljava/lang/String;

.field private end_datetime:Ljava/lang/String;

.field private height:Ljava/lang/String;

.field private html:Ljava/lang/String;

.field private img_name:Ljava/lang/String;

.field private img_path:Ljava/lang/String;

.field private impression_api:Ljava/lang/String;

.field private landing_url:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setCmp_no(Ljava/lang/String;)V

    .line 54
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setAd_group_no(Ljava/lang/String;)V

    .line 55
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setAd_no(Ljava/lang/String;)V

    .line 56
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setImg_path(Ljava/lang/String;)V

    .line 57
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setImg_name(Ljava/lang/String;)V

    .line 58
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setClick_option(Ljava/lang/String;)V

    .line 59
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setClick_action_type(Ljava/lang/String;)V

    .line 60
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setLanding_url(Ljava/lang/String;)V

    .line 61
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setBg_color(Ljava/lang/String;)V

    .line 62
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setWidth(Ljava/lang/String;)V

    .line 63
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setHeight(Ljava/lang/String;)V

    .line 64
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setEnd_datetime(Ljava/lang/String;)V

    .line 65
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setImpression_api(Ljava/lang/String;)V

    .line 66
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setClick_api(Ljava/lang/String;)V

    .line 67
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setClick_tracking_api(Ljava/lang/String;)V

    .line 68
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataBannerAD;->setHtml(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public getAd_group_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->ad_group_no:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->ad_no:Ljava/lang/String;

    return-object v0
.end method

.method public getBg_color()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->bg_color:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_action_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_action_type:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_api()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_api:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_option()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_option:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_tracking_api()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_tracking_api:Ljava/lang/String;

    return-object v0
.end method

.method public getCmp_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->cmp_no:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_datetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->end_datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->img_name:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->img_path:Ljava/lang/String;

    return-object v0
.end method

.method public getImpression_api()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->impression_api:Ljava/lang/String;

    return-object v0
.end method

.method public getLanding_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->landing_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataBannerAD;->width:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_group_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_group_no"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->ad_group_no:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setAd_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_no"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->ad_no:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setBg_color(Ljava/lang/String;)V
    .locals 0
    .param p1, "bg_color"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->bg_color:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setClick_action_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_action_type"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_action_type:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setClick_api(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_api"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_api:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setClick_option(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_option"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_option:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setClick_tracking_api(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_tracking_api"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_tracking_api:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setCmp_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmp_no"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->cmp_no:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setEnd_datetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "end_datetime"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->end_datetime:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->height:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->html:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setImg_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "img_name"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->img_name:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setImg_path(Ljava/lang/String;)V
    .locals 0
    .param p1, "img_path"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->img_path:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setImpression_api(Ljava/lang/String;)V
    .locals 0
    .param p1, "impression_api"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->impression_api:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setLanding_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "landing_url"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->landing_url:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataBannerAD;->width:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataBannerAD{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cmp_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->cmp_no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->ad_no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "img_path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->img_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "img_name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->img_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click_option : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_option:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click_action_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_action_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "landing_url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->landing_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bg_color : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->bg_color:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "width : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->width:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->height:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "end_datetime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->end_datetime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "impression_api : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->impression_api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click_api : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click_tracking_api : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->click_tracking_api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "html : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataBannerAD;->html:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
