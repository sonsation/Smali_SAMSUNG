.class public Lcom/android/server/cocktailbar/utils/CocktailBarConfig;
.super Ljava/lang/Object;
.source "CocktailBarConfig.java"


# static fields
.field private static final DEFAULT_VERSION:I = 0x1

.field private static final INTENT_FILTER:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final META_DATA:Ljava/lang/String; = "com.samsung.android.edge.config"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CATEGORY_FILTER:Ljava/lang/String; = "category_filter"

.field private static final TAG_META_DATA_HIDE_EDGE_SERVICE:Ljava/lang/String; = "meta_data_hide_edge_service"

.field private static final TAG_PACKAGE_HIDE_EDGE_SERVICE:Ljava/lang/String; = "package_hide_edge_service"

.field private static final TAG_PREFERRED_WIDTH:Ljava/lang/String; = "preferred_width"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field public static sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;


# instance fields
.field private mCategoryFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryFilterStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsServiceFounded:Z

.field private mMetaDataHideEdgeService:Ljava/lang/String;

.field private mPackageHideEdgeServiceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferredWidth:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    .line 42
    iput v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    .line 47
    iput-boolean v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    .line 56
    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseEdgeConfig()V

    .line 55
    return-void
.end method

.method private getEdgeConfigParser()Landroid/content/res/XmlResourceParser;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.cocktailbarservice"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 130
    const/16 v5, 0x80

    .line 129
    invoke-virtual {v4, v0, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 131
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 132
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    .line 133
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 134
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEdgeConfigParser: not enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_0
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isSystemApplication(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "com.samsung.android.edge.config"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    return-object v4

    .line 141
    :cond_1
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEdgeConfigParser: not system app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "ri$iterator":Ljava/util/Iterator;
    :cond_2
    iput-boolean v7, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    .line 146
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    const-string v5, "getEdgeConfigParser: no enabled cocktailbarservice"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    return-object v8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    return-object v0
.end method

.method private parseEdgeConfig()V
    .locals 5

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getEdgeConfigParser()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 113
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "productName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 116
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 121
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    .line 122
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 121
    throw v4
.end method

.method private parseXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "productName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 153
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 155
    .local v0, "eventType":I
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    .line 156
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "tag":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    .line 159
    :pswitch_0
    const-string v4, "version"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    const-string v4, "name"

    const/4 v5, 0x2

    invoke-interface {p1, v6, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    goto :goto_1

    .line 161
    :cond_1
    const-string v4, "category_filter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    const-string v4, "product"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "pName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 166
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 167
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 166
    if-eqz v4, :cond_0

    .line 168
    :cond_3
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    goto :goto_1

    .line 170
    .end local v1    # "pName":Ljava/lang/String;
    :cond_4
    const-string v4, "preferred_width"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 171
    const-string v4, "value"

    const/16 v5, 0xa0

    invoke-interface {p1, v6, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    goto :goto_1

    .line 172
    :cond_5
    const-string v4, "package_hide_edge_service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 173
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_6
    const-string v4, "meta_data_hide_edge_service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    goto/16 :goto_1

    .line 152
    .end local v3    # "tag":Ljava/lang/String;
    :cond_7
    return-void

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CocktailBarConfig] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "dumpString":Ljava/lang/StringBuffer;
    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 191
    const-string v1, " categoryStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 194
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 195
    :cond_1
    const-string v1, " hideAppList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getCategoryFilter()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    .line 89
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "strings":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 91
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 92
    .local v0, "string":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "string":Ljava/lang/String;
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    const-string v3, "getCategoryFilter: CategoryFilterStr is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getCategoryFilterStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVersion()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public getMetaDataHideEdgeService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageHideEdgeServiceList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getPreferredWidth()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    return v0
.end method

.method public reload()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseEdgeConfig()V

    .line 106
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
