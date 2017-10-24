.class public Lcom/android/systemui/screenshot/SmartClipDataExtractor;
.super Ljava/lang/Object;
.source "SmartClipDataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mWhiteWebAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-class v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 32
    const-string/jumbo v1, "com.android.chrome"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    sput-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractSmartClipData(Landroid/content/Context;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    .line 88
    div-int/lit8 v0, p1, 0x2

    .line 89
    .local v0, "centerX":I
    div-int/lit8 v1, p2, 0x2

    .line 90
    .local v1, "centerY":I
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v3, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v2, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;-><init>(Landroid/content/Context;)V

    .line 93
    .local v2, "mgr":Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v4

    .line 94
    .local v4, "repository":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    return-object v4
.end method

.method public static getWebData(Landroid/content/Context;II)Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v10, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    .local v7, "webData":Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    const/4 v6, 0x0

    .line 46
    .local v6, "validUrl":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->extractSmartClipData(Landroid/content/Context;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v1

    .line 47
    .local v1, "repository":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    if-nez v1, :cond_0

    .line 48
    sget-object v8, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getWebData : Failed to extract the SmartClip data"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-object v10

    .line 52
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 53
    .local v0, "contentRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 54
    sget-object v8, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getWebData : content Rect w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    const-string/jumbo v8, "url"

    invoke-virtual {v1, v8}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v4

    .line 58
    .local v4, "tagArray":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 59
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tag$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 60
    .local v2, "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "url":Ljava/lang/String;
    sget-object v8, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getWebData : url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {v5}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 63
    move-object v6, v5

    .line 68
    .end local v2    # "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "validUrl":Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    .end local v7    # "webData":Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getAppPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v7, "webData":Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    invoke-static {v7}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 70
    sget-object v8, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getWebData : Invalid web data"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v7, 0x0

    .line 74
    .end local v3    # "tag$iterator":Ljava/util/Iterator;
    .end local v7    # "webData":Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;
    :cond_4
    return-object v7
.end method

.method private static isValidUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "lowerCaseUrl":Ljava/lang/String;
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 102
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z
    .locals 6
    .param p0, "data"    # Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    .prologue
    const/4 v5, 0x0

    .line 106
    iget-object v2, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 107
    :cond_0
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidWebData : url or appPkgName is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v5

    .line 111
    :cond_1
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidWebData url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", data.mAppPkgName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidWebData : Not valid url"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v5

    .line 118
    :cond_2
    const/4 v1, 0x0

    .line 119
    .local v1, "isWhiteApp":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 120
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    const/4 v1, 0x1

    .line 126
    :cond_3
    if-nez v1, :cond_5

    .line 127
    sget-object v2, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isValidWebData : Not white app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v5

    .line 119
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method public static isWritingWebDataFeatureEnabled()Z
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_GALLERY_SUPPORT_GO_TO_URL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 38
    .local v0, "isEnabled":Z
    sget-object v1, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWritingWebDataFeatureEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v0
.end method

.method public static putWebDataToContentValues(Landroid/content/ContentValues;Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)V
    .locals 3
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "webData"    # Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    .prologue
    .line 78
    invoke-static {p1}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->isValidWebData(Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putWebDataToContentValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string/jumbo v0, "image_url"

    iget-object v1, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "vendor"

    iget-object v1, p1, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "putWebDataToContentValues : Web data is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
