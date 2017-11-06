.class public Lcom/mezzo/common/network/data/DataNTSSP;
.super Lcom/mezzo/common/network/data/DataNTCommon;
.source "DataNTSSP.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/mezzo/common/network/data/IParserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mezzo/common/network/data/IParserData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ad_pd_attr:Ljava/lang/String;

.field private adm:Ljava/lang/String;

.field private bg_color:Ljava/lang/String;

.field private chk_ssp_click:Ljava/lang/String;

.field private code_type:Ljava/lang/String;

.field private dsp_click:Ljava/lang/String;

.field private dsp_imp:Ljava/lang/String;

.field private height:Ljava/lang/String;

.field private html:Ljava/lang/String;

.field private img_path:Ljava/lang/String;

.field private landing_url:Ljava/lang/String;

.field private ssp_click:Ljava/lang/String;

.field private ssp_imp:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/mezzo/common/network/data/DataNTSSP$1;

    invoke-direct {v0}, Lcom/mezzo/common/network/data/DataNTSSP$1;-><init>()V

    sput-object v0, Lcom/mezzo/common/network/data/DataNTSSP;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 260
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mezzo/common/network/data/DataNTCommon;-><init>()V

    .line 25
    const-string v0, "0"

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->width:Ljava/lang/String;

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->height:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;->NO:Ljava/lang/String;

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->chk_ssp_click:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mezzo/common/network/data/DataNTCommon;-><init>()V

    .line 25
    const-string v0, "0"

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->width:Ljava/lang/String;

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->height:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;->NO:Ljava/lang/String;

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->chk_ssp_click:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/data/DataNTSSP;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/mezzo/common/network/data/DataNTCommon;->clearResponse()V

    .line 55
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setAd_pd_attr(Ljava/lang/String;)V

    .line 56
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setCode_type(Ljava/lang/String;)V

    .line 57
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setImg_path(Ljava/lang/String;)V

    .line 58
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setLanding_url(Ljava/lang/String;)V

    .line 59
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setWidth(Ljava/lang/String;)V

    .line 60
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setHeight(Ljava/lang/String;)V

    .line 61
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setSsp_imp(Ljava/lang/String;)V

    .line 62
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setChk_ssp_click(Ljava/lang/String;)V

    .line 63
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setDsp_imp(Ljava/lang/String;)V

    .line 64
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setSsp_click(Ljava/lang/String;)V

    .line 65
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setDsp_click(Ljava/lang/String;)V

    .line 66
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setHtml(Ljava/lang/String;)V

    .line 67
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setBg_color(Ljava/lang/String;)V

    .line 68
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setAdm(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getAd_pd_attr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->ad_pd_attr:Ljava/lang/String;

    return-object v0
.end method

.method public getAdm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->adm:Ljava/lang/String;

    return-object v0
.end method

.method public getBg_color()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->bg_color:Ljava/lang/String;

    return-object v0
.end method

.method public getChk_ssp_click()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->chk_ssp_click:Ljava/lang/String;

    return-object v0
.end method

.method public getCode_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->code_type:Ljava/lang/String;

    return-object v0
.end method

.method public getDsp_click()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->dsp_click:Ljava/lang/String;

    return-object v0
.end method

.method public getDsp_imp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->dsp_imp:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->img_path:Ljava/lang/String;

    return-object v0
.end method

.method public getLanding_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->landing_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSsp_click()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->ssp_click:Ljava/lang/String;

    return-object v0
.end method

.method public getSsp_imp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->ssp_imp:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTSSP;->width:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/mezzo/common/network/data/DataNTCommon;->commonReadFromParcel(Landroid/os/Parcel;)V

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setAd_pd_attr(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setCode_type(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setImg_path(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setLanding_url(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setWidth(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setHeight(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setSsp_imp(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setDsp_imp(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setSsp_click(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setChk_ssp_click(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setDsp_click(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setHtml(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setBg_color(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTSSP;->setAdm(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setAd_pd_attr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_pd_attr"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->ad_pd_attr:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setAdm(Ljava/lang/String;)V
    .locals 0
    .param p1, "adm"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->adm:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setBg_color(Ljava/lang/String;)V
    .locals 0
    .param p1, "bg_color"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->bg_color:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setChk_ssp_click(Ljava/lang/String;)V
    .locals 0
    .param p1, "chk_ssp_click"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->chk_ssp_click:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setCode_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "code_type"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->code_type:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setDsp_click(Ljava/lang/String;)V
    .locals 0
    .param p1, "dsp_click"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->dsp_click:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setDsp_imp(Ljava/lang/String;)V
    .locals 0
    .param p1, "dsp_imp"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->dsp_imp:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->height:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->html:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setImg_path(Ljava/lang/String;)V
    .locals 0
    .param p1, "img_path"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->img_path:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setLanding_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "landing_url"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->landing_url:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setSsp_click(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssp_click"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->ssp_click:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSsp_imp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssp_imp"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->ssp_imp:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTSSP;->width:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/mezzo/common/network/data/DataNTCommon;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ad_pd_attr : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->ad_pd_attr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " code_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->code_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " img_path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->img_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " landing_url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->landing_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " width : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->width:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " height : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->height:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ssp_imp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->ssp_imp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " chk_ssp_click : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getChk_ssp_click()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " dsp_imp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->dsp_imp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ssp_click : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->ssp_click:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " dsp_click : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->dsp_click:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " html : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->html:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " bg_color : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->bg_color:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " adm : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTSSP;->adm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/mezzo/common/network/data/DataNTCommon;->commonWriteToParcel(Landroid/os/Parcel;)V

    .line 196
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getAd_pd_attr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getWidth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getChk_ssp_click()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getBg_color()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTSSP;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return-void
.end method
