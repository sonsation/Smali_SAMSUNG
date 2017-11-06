.class public Lcom/mezzo/common/network/data/DataIEndAD;
.super Ljava/lang/Object;
.source "DataIEndAD.java"

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

.field private pars_filename:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setCmp_no(Ljava/lang/String;)V

    .line 72
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setAd_group_no(Ljava/lang/String;)V

    .line 73
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setAd_no(Ljava/lang/String;)V

    .line 74
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setImg_path(Ljava/lang/String;)V

    .line 75
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setImg_name(Ljava/lang/String;)V

    .line 76
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setClick_option(Ljava/lang/String;)V

    .line 77
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setClick_action_type(Ljava/lang/String;)V

    .line 78
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setLanding_url(Ljava/lang/String;)V

    .line 79
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setBg_color(Ljava/lang/String;)V

    .line 80
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setWidth(Ljava/lang/String;)V

    .line 81
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setHeight(Ljava/lang/String;)V

    .line 82
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setEnd_datetime(Ljava/lang/String;)V

    .line 83
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setImpression_api(Ljava/lang/String;)V

    .line 84
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setClick_api(Ljava/lang/String;)V

    .line 85
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setClick_tracking_api(Ljava/lang/String;)V

    .line 86
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataIEndAD;->setHtml(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public getAd_group_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->ad_group_no:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->ad_no:Ljava/lang/String;

    return-object v0
.end method

.method public getBg_color()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->bg_color:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_action_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_action_type:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_api()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_api:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_option()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_option:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_tracking_api()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_tracking_api:Ljava/lang/String;

    return-object v0
.end method

.method public getCmp_no()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->cmp_no:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_datetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->end_datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->img_name:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->img_path:Ljava/lang/String;

    return-object v0
.end method

.method public getImpression_api()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->impression_api:Ljava/lang/String;

    return-object v0
.end method

.method public getLanding_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->landing_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPars_filename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->pars_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->width:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_group_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_group_no"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->ad_group_no:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setAd_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_no"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->ad_no:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setBg_color(Ljava/lang/String;)V
    .locals 0
    .param p1, "bg_color"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->bg_color:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setClick_action_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_action_type"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_action_type:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setClick_api(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_api"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_api:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setClick_option(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_option"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_option:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setClick_tracking_api(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_tracking_api"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_tracking_api:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setCmp_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmp_no"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->cmp_no:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setEnd_datetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "end_datetime"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->end_datetime:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->height:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->html:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setImg_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "img_name"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->img_name:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setImg_path(Ljava/lang/String;)V
    .locals 1
    .param p1, "img_path"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->img_path:Ljava/lang/String;

    .line 119
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/data/DataIEndAD;->setPars_filename(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->pars_filename:Ljava/lang/String;

    goto :goto_0
.end method

.method public setImpression_api(Ljava/lang/String;)V
    .locals 0
    .param p1, "impression_api"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->impression_api:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setLanding_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "landing_url"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->landing_url:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setPars_filename(Ljava/lang/String;)V
    .locals 4
    .param p1, "pars_filename"    # Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    const/4 v1, -0x1

    .line 59
    .local v1, "idx":I
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 60
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 61
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "fname":Ljava/lang/String;
    iput-object v0, p0, Lcom/mezzo/common/network/data/DataIEndAD;->pars_filename:Ljava/lang/String;

    .line 67
    .end local v0    # "fname":Ljava/lang/String;
    .end local v1    # "idx":I
    :cond_0
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataIEndAD;->width:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataIEndAD{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cmp_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->cmp_no:Ljava/lang/String;

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

    const-string v2, "ad_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->ad_no:Ljava/lang/String;

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

    const-string v2, "img_path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->img_path:Ljava/lang/String;

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

    const-string v2, "img_name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->img_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click_option : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_option:Ljava/lang/String;

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

    const-string/jumbo v2, "pars_filename : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->pars_filename:Ljava/lang/String;

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

    const-string v2, "click_action_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_action_type:Ljava/lang/String;

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

    const-string v2, "landing_url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->landing_url:Ljava/lang/String;

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

    const-string v2, "bg_color : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->bg_color:Ljava/lang/String;

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

    const-string/jumbo v2, "width : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->width:Ljava/lang/String;

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

    const-string v2, "height : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->height:Ljava/lang/String;

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

    const-string v2, "end_datetime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->end_datetime:Ljava/lang/String;

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

    const-string v2, "impression_api : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->impression_api:Ljava/lang/String;

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

    const-string v2, "click_api : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_api:Ljava/lang/String;

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

    const-string v2, "click_tracking_api : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->click_tracking_api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "html : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataIEndAD;->html:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
