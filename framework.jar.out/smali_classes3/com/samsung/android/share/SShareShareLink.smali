.class public Lcom/samsung/android/share/SShareShareLink;
.super Ljava/lang/Object;
.source "SShareShareLink.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareShareLink"

.field private static mEasySignUpCertificated:Z


# instance fields
.field private defaultTextSize:I

.field private mActivity:Landroid/app/Activity;

.field private mBixby:Lcom/samsung/android/share/SShareBixby;

.field private mContext:Landroid/content/Context;

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mIntent:Landroid/content/Intent;

.field private mLogging:Lcom/samsung/android/share/SShareLogging;

.field private mOrigIntent:Landroid/content/Intent;

.field private mShareLinkEnabled:Z

.field private mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/share/SShareShareLink;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;Ljava/util/List;Lcom/samsung/android/share/SShareBixby;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p6, "bixby"    # Lcom/samsung/android/share/SShareBixby;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/share/SShareCommon;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/samsung/android/share/SShareBixby;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p5, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    .line 58
    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 61
    iput-object p4, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    .line 62
    iput-object p5, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    .line 63
    iput-object p6, p0, Lcom/samsung/android/share/SShareShareLink;->mBixby:Lcom/samsung/android/share/SShareBixby;

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/share/SShareShareLink;->checkEasySignUpCertificated()V

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/share/SShareShareLink;->checkShareLinkEnabled()V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/samsung/android/share/SShareLogging;

    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    .line 57
    :cond_0
    return-void
.end method

.method private checkEasySignUpCertificated()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/share/SShareSignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    .line 234
    const-string/jumbo v0, "SShareShareLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isJoined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .prologue
    const v3, 0x3f99999a    # 1.2f

    .line 254
    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 256
    .local v0, "currentFontScale":F
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    .line 257
    int-to-float v2, p2

    div-float v1, v2, v0

    .line 258
    .local v1, "scaleBase":F
    mul-float v2, v1, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 252
    .end local v1    # "scaleBase":F
    :cond_0
    return-void
.end method

.method private checkShareLinkEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 238
    sget-boolean v1, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareSignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    .line 241
    .local v0, "retVal":I
    const-string/jumbo v1, "SShareShareLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ServiceStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eq v0, v4, :cond_0

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    .line 237
    .end local v0    # "retVal":I
    :goto_0
    return-void

    .line 245
    .restart local v0    # "retVal":I
    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    goto :goto_0

    .line 248
    .end local v0    # "retVal":I
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public getShareLinkIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 173
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.app.simplesharing.action.REQUEST_LINK_SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    .line 176
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 183
    .local v2, "nSize":I
    new-array v1, v2, [Landroid/content/Intent;

    .line 184
    .local v1, "initialIntents":[Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 185
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    .end local v0    # "i":I
    .end local v1    # "initialIntents":[Landroid/content/Intent;
    .end local v2    # "nSize":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/share/SShareShareLink;->mIntent:Landroid/content/Intent;

    return-object v4
.end method

.method public isEasySignUpCertificated()Z
    .locals 1

    .prologue
    .line 158
    sget-boolean v0, Lcom/samsung/android/share/SShareShareLink;->mEasySignUpCertificated:Z

    return v0
.end method

.method public isShareLinkEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/share/SShareShareLink;->mShareLinkEnabled:Z

    return v0
.end method

.method public setShareLinkDri(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const-string/jumbo v0, "SShareShareLink"

    const-string/jumbo v1, "setShareLinkDri : dri is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink;->mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 225
    return-void
.end method

.method public setShareLinkView()V
    .locals 28

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const v26, 0x10204c9

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 77
    .local v18, "mShareLinkView":Landroid/view/View;
    if-eqz v18, :cond_2

    .line 78
    new-instance v25, Lcom/samsung/android/share/SShareShareLink$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/share/SShareShareLink$1;-><init>(Lcom/samsung/android/share/SShareShareLink;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const/16 v22, 0x0

    .line 87
    .local v22, "reflectionDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    .line 88
    .local v23, "reflectionTitle":Ljava/lang/String;
    const/16 v21, 0x0

    .line 93
    .local v21, "reflectionDescription":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string/jumbo v26, "com.samsung.android.app.simplesharing"

    const/16 v27, 0x80

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 94
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v20, Ldalvik/system/PathClassLoader;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 95
    .local v20, "pathClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v25, "com.samsung.android.app.simplesharing.sharepanel.SharePanelComponent"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 96
    .local v3, "SharePanelComponent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "com.samsung.android.app.simplesharing"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 97
    .local v5, "context":Landroid/content/Context;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 98
    const-class v25, Landroid/content/Context;

    const/16 v26, 0x0

    aput-object v25, v19, v26

    .line 102
    .local v19, "paramTypes":[Ljava/lang/Class;
    const-string/jumbo v25, "getIcon"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 103
    .local v14, "getIcon":Ljava/lang/reflect/Method;
    const-string/jumbo v25, "getTitle"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 104
    .local v15, "getTitle":Ljava/lang/reflect/Method;
    const-string/jumbo v25, "getDescription"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 107
    .local v13, "getDescription":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v17

    .line 109
    .local v17, "instance":Ljava/lang/Object;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v5, v25, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    .line 110
    .local v22, "reflectionDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v5, v25, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    .line 111
    .local v23, "reflectionTitle":Ljava/lang/String;
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v5, v25, v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v3    # "SharePanelComponent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "context":Landroid/content/Context;
    .end local v13    # "getDescription":Ljava/lang/reflect/Method;
    .end local v14    # "getIcon":Ljava/lang/reflect/Method;
    .end local v15    # "getTitle":Ljava/lang/reflect/Method;
    .end local v17    # "instance":Ljava/lang/Object;
    .end local v19    # "paramTypes":[Ljava/lang/Class;
    .end local v20    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .end local v21    # "reflectionDescription":Ljava/lang/String;
    .end local v22    # "reflectionDrawable":Landroid/graphics/drawable/Drawable;
    .end local v23    # "reflectionTitle":Ljava/lang/String;
    :goto_0
    const v25, 0x1020014

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 128
    .local v24, "titleText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x105027d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    .line 129
    if-eqz v24, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 131
    if-eqz v23, :cond_0

    .line 132
    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    const v25, 0x1020015

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 138
    .local v6, "descText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/share/SShareShareLink;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x105027e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    .line 139
    if-eqz v6, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/share/SShareShareLink;->defaultTextSize:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v6, v1}, Lcom/samsung/android/share/SShareShareLink;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 141
    if-eqz v21, :cond_1

    .line 142
    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    const v25, 0x10204ca

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 148
    .local v16, "icon":Landroid/widget/ImageView;
    if-eqz v16, :cond_2

    if-eqz v22, :cond_2

    .line 149
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .end local v6    # "descText":Landroid/widget/TextView;
    .end local v16    # "icon":Landroid/widget/ImageView;
    .end local v24    # "titleText":Landroid/widget/TextView;
    :cond_2
    return-void

    .line 123
    .restart local v21    # "reflectionDescription":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 124
    .local v10, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 121
    .end local v10    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v7

    .line 122
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v9

    .line 120
    .local v9, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v12

    .line 118
    .local v12, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 115
    .end local v12    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v11

    .line 116
    .local v11, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 113
    .end local v11    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v8

    .line 114
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public shareLinkItemClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mLogging:Lcom/samsung/android/share/SShareLogging;

    const-string/jumbo v2, "SLNK"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mSimpleSharingDri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "SShareShareLink"

    const-string/jumbo v2, "shareLinkItemClick : startActivity failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shareLinkTipClick()V
    .locals 4

    .prologue
    .line 213
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.app.simplesharing.intent.ACTION_VIEW_TIP_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareShareLink;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "SShareShareLink"

    const-string/jumbo v3, "shareLinkTipClick : startActivity failed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
