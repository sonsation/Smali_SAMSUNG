.class public Lcom/android/launcher3/common/model/AutoInstallsLayout;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"


# static fields
.field private static final ACTION_LAUNCHER_CUSTOMIZATION:Ljava/lang/String; = "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

.field private static final TAG:Ljava/lang/String; = "AutoInstallsLayout"

.field private static final TAG_WORKSPACE:Ljava/lang/String; = "workspace"

.field private static sAutoInstallApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/common/model/AutoInstallsLayout;->mPackageName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/launcher3/common/model/AutoInstallsLayout;->mResources:Landroid/content/res/Resources;

    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->loadAutoInstallApp()V

    .line 71
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/launcher3/common/model/AutoInstallsLayout;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 48
    const-string v1, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 48
    invoke-static {v1, v3}, Lcom/android/launcher3/Utilities;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v0

    .line 50
    .local v0, "customizationApkInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Resources;>;"
    if-nez v0, :cond_0

    move-object v1, v2

    .line 61
    :goto_0
    return-object v1

    .line 54
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v2

    .line 56
    goto :goto_0

    .line 59
    :cond_2
    const-string v1, "AutoInstallsLayout"

    const-string v2, "there is customizationApkInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v3, Lcom/android/launcher3/common/model/AutoInstallsLayout;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Resources;

    invoke-direct {v3, v1, v2}, Lcom/android/launcher3/common/model/AutoInstallsLayout;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    move-object v1, v3

    goto :goto_0
.end method

.method public static isAutoInstallApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 82
    sget-object v2, Lcom/android/launcher3/common/model/AutoInstallsLayout;->sAutoInstallApp:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher3/common/model/AutoInstallsLayout;->sAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    sget-object v2, Lcom/android/launcher3/common/model/AutoInstallsLayout;->sAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "autoInstallClassName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v1, "AutoInstallsLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoInstallApp, packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", className : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadAutoInstallApp()V
    .locals 12

    .prologue
    .line 96
    iget-object v8, p0, Lcom/android/launcher3/common/model/AutoInstallsLayout;->mPackageName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/common/model/AutoInstallsLayout;->mResources:Landroid/content/res/Resources;

    if-nez v8, :cond_2

    .line 97
    :cond_0
    const-string v8, "AutoInstallsLayout"

    const-string v9, "loadAutoInstallApp, mPackageName or mResources is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/common/model/AutoInstallsLayout;->mResources:Landroid/content/res/Resources;

    const-string v9, "default_layout"

    const-string v10, "xml"

    iget-object v11, p0, Lcom/android/launcher3/common/model/AutoInstallsLayout;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 102
    .local v5, "resId":I
    if-gtz v5, :cond_3

    .line 103
    const-string v8, "AutoInstallsLayout"

    const-string v9, "loadAutoInstallApp, there is no default_layout.xml"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/common/model/AutoInstallsLayout;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 109
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v4, :cond_4

    .line 110
    const-string v8, "AutoInstallsLayout"

    const-string v9, "loadAutoInstallApp, parser is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/android/launcher3/common/model/AutoInstallsLayout;->sAutoInstallApp:Ljava/util/HashMap;

    .line 116
    :try_start_0
    const-string v8, "workspace"

    invoke-static {v4, v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 117
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 119
    .local v1, "depth":I
    :cond_5
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 120
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_1

    :cond_6
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 121
    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 125
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "autoinstall"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 127
    const-string v8, "packageName"

    invoke-static {v4, v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "packageName":Ljava/lang/String;
    const-string v8, "className"

    invoke-static {v4, v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "className":Ljava/lang/String;
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 132
    sget-object v8, Lcom/android/launcher3/common/model/AutoInstallsLayout;->sAutoInstallApp:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v8, "AutoInstallsLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAutoInstallApp, packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", className : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 140
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "depth":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v8, "AutoInstallsLayout"

    const-string v9, "Got exception parsing autoinstall."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 137
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "depth":I
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_7
    :try_start_1
    const-string v8, "AutoInstallsLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid tag : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 140
    .end local v1    # "depth":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_1
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher3/common/model/AutoInstallsLayout;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher3/common/model/AutoInstallsLayout;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
