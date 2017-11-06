.class public Lcom/dawin/objects/AdInfos;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_MODE_CALL:I = 0x36b0

.field public static final ACTION_MODE_DOWNLOAD:I = 0x32c8

.field public static final ACTION_MODE_EVENT:I = 0x2af8

.field public static final ACTION_MODE_MAP:I = 0x2ee0

.field public static final ACTION_MODE_NONE:I = 0x3a98

.field public static final CALL:I = 0x320

.field public static final DOWNLOAD:I = 0x2bc

.field public static final EVENT:I = 0x1f4

.field public static final MAP:I = 0x258

.field public static final SCREEN:I = 0x0

.field public static final SKIP:I = 0x190

.field public static final SKIP_DESCRIPTION:I = 0x191


# instance fields
.field private mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

.field private mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

.field private mExtensionInfo:Lcom/dawin/http/parser/ExtensionInfoParser;

.field private mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

.field private mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

.field private mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;


# direct methods
.method public constructor <init>(Lcom/dawin/http/parser/BasicInfoParser;Lcom/dawin/http/parser/TrackingInfoParser;Lcom/dawin/http/parser/MediaFileInfoParser;Lcom/dawin/http/parser/IconInfoParser;Lcom/dawin/http/parser/AdditionalInfoParser;Lcom/dawin/http/parser/ExtensionInfoParser;)V
    .locals 0
    .param p1, "basicInfo"    # Lcom/dawin/http/parser/BasicInfoParser;
    .param p2, "trackingInfo"    # Lcom/dawin/http/parser/TrackingInfoParser;
    .param p3, "mediaFileInfo"    # Lcom/dawin/http/parser/MediaFileInfoParser;
    .param p4, "iconInfo"    # Lcom/dawin/http/parser/IconInfoParser;
    .param p5, "addInfo"    # Lcom/dawin/http/parser/AdditionalInfoParser;
    .param p6, "ExtensionInfo"    # Lcom/dawin/http/parser/ExtensionInfoParser;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iput-object p2, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iput-object p3, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    iput-object p4, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    iput-object p5, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    iput-object p6, p0, Lcom/dawin/objects/AdInfos;->mExtensionInfo:Lcom/dawin/http/parser/ExtensionInfoParser;

    return-void
.end method


# virtual methods
.method public getActionMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/IconInfoParser;->getActionButtonMode()I

    move-result v0

    goto :goto_0
.end method

.method public getAdDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getAdDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdDuration()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getAdDuration()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getAdId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdSystem()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getAdSystem()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChargeTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser;->getChargeTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChargeTime()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser;->getChargeTime()I

    move-result v0

    goto :goto_0
.end method

.method public getClickThrough(I)Ljava/lang/String;
    .locals 1
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    invoke-virtual {v0, p1}, Lcom/dawin/http/parser/IconInfoParser;->getClickThrough(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser;->getEndTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getErrorUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mExtensionInfo:Lcom/dawin/http/parser/ExtensionInfoParser;

    return-object v0
.end method

.method public getIconBase64String(I)Ljava/lang/String;
    .locals 1
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    invoke-virtual {v0, p1}, Lcom/dawin/http/parser/IconInfoParser;->getBase64String(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconShowTime(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    invoke-virtual {v0, p1}, Lcom/dawin/http/parser/IconInfoParser;->getIconShowTime(I)I

    move-result v0

    goto :goto_0
.end method

.method public getIconUrl(I)Ljava/lang/String;
    .locals 1
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    invoke-virtual {v0, p1}, Lcom/dawin/http/parser/IconInfoParser;->getIconUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImpressionTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getImpression()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaDelivery()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/MediaFileInfoParser;->getMediaDelivery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/MediaFileInfoParser;->getMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/MediaFileInfoParser;->getMediaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuarterTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "quarter"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-virtual {v0, p1}, Lcom/dawin/http/parser/TrackingInfoParser;->getQuarterTag(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuarterTime(I)I
    .locals 1
    .param p1, "quarter"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-virtual {v0, p1}, Lcom/dawin/http/parser/TrackingInfoParser;->getQuarterTime(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkipTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser;->getSkipTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser;->getStartTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTickerList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/http/parser/AdditionalInfoParser$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    invoke-virtual {v1}, Lcom/dawin/http/parser/AdditionalInfoParser;->isAdditionalInfoAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    invoke-virtual {v1}, Lcom/dawin/http/parser/AdditionalInfoParser;->isTickerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser;->getTickerAdList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackingUrl(I)Ljava/lang/String;
    .locals 1
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    invoke-virtual {v0, p1}, Lcom/dawin/http/parser/IconInfoParser;->getTrackingUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoClickTracking()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getVideoClickTracking()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoclickThrough()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->getVideoClickThrough()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAdditionalInfoAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser;->isAdditionalInfoAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public isAvailable(I)Z
    .locals 1
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    invoke-virtual {v0, p1}, Lcom/dawin/http/parser/IconInfoParser;->isAvailable(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isIconShowDirectly(I)Z
    .locals 1
    .param p1, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mIconInfo:Lcom/dawin/http/parser/IconInfoParser;

    invoke-virtual {v0, p1}, Lcom/dawin/http/parser/IconInfoParser;->isIconShowDirectly(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isParsingProblemOccured()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v2}, Lcom/dawin/http/parser/BasicInfoParser;->getAdId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v2}, Lcom/dawin/http/parser/BasicInfoParser;->isParsingProblemOccured()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-virtual {v2}, Lcom/dawin/http/parser/TrackingInfoParser;->isParsingProblemOccured()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    invoke-virtual {v2}, Lcom/dawin/http/parser/MediaFileInfoParser;->isParsingProblemOccured()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isTickerAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    invoke-virtual {v1}, Lcom/dawin/http/parser/AdditionalInfoParser;->isAdditionalInfoAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mAddInfo:Lcom/dawin/http/parser/AdditionalInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser;->isTickerAvailable()Z

    move-result v0

    goto :goto_0
.end method
