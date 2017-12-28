.class public Lcom/android/launcher3/AboutPageActivity;
.super Landroid/app/Activity;
.source "AboutPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;
    }
.end annotation


# static fields
.field private static final INCALLUI_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final LOG_TAG:Ljava/lang/String; = "CheckForUpdates"

.field private static final MCC_OF_CHINA:Ljava/lang/String; = "460"

.field public static final RESULT_CODE_NOT_AVAILABLE:I = 0x0

.field public static final RESULT_CODE_NOT_NECESSARY_TO_UPDATE:I = 0x1

.field public static final RESULT_CODE_NO_NETWORK:I = 0x3

.field public static final RESULT_CODE_PARAMETER_MISSING:I = 0x3e8

.field public static final RESULT_CODE_UNKNOWN:I = -0x3e8

.field public static final RESULT_CODE_UPDATE_AVAILABLE:I = 0x2

.field private static final SAMSUNG_APPS_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps.Main"

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final STUB_UPDATE_CHECK_CHINA_URL:Ljava/lang/String; = "http://cn-ms.samsungapps.com/getCNVasURL.as"

.field private static final STUB_UPDATE_CHECK_URL:Ljava/lang/String; = "http://vas.samsungapps.com/stub/stubUpdateCheck.as"

.field private static final TARGET_PATH_PD_TEST:Ljava/lang/String;

.field private static final XML_TAG_APP_ID:Ljava/lang/String; = "appId"

.field private static final XML_TAG_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field private static final XML_TAG_RESULT_MSG:Ljava/lang/String; = "resultMsg"

.field private static final XML_TAG_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final XML_TAG_VERSION_NAME:Ljava/lang/String; = "versionName"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAppsInfo:Landroid/widget/TextView;

.field private mCheckUpdateTask:Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

.field private mContext:Landroid/content/Context;

.field private mHelpText:Landroid/widget/TextView;

.field private mHelpTextTitle:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mNeedUpdate:I

.field private mRetryButton:Landroid/widget/Button;

.field private mUpdateButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "go_to_andromeda.test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/AboutPageActivity;->TARGET_PATH_PD_TEST:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/AboutPageActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/AboutPageActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/AboutPageActivity;)Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/AboutPageActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mCheckUpdateTask:Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/AboutPageActivity;Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;)Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/AboutPageActivity;
    .param p1, "x1"    # Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/launcher3/AboutPageActivity;->mCheckUpdateTask:Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/AboutPageActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/AboutPageActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mRetryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/AboutPageActivity;Ljava/lang/String;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/AboutPageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AboutPageActivity;->check(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/AboutPageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/AboutPageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/launcher3/AboutPageActivity;->mNeedUpdate:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/AboutPageActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method private check(Ljava/lang/String;Z)I
    .locals 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "needTimeOut"    # Z

    .prologue
    .line 201
    const/4 v14, 0x3

    .line 204
    .local v14, "ret":I
    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 205
    .local v16, "szModel":Ljava/lang/String;
    const-string v17, "SAMSUNG-"

    .line 206
    .local v17, "szPrefix":Ljava/lang/String;
    const-string v15, "http://vas.samsungapps.com/stub/stubUpdateCheck.as"

    .line 208
    .local v15, "stubUpdateCheckURL":Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 209
    const-string v20, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 212
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/AboutPageActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/AboutPageActivity;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 213
    const-string v20, "CheckForUpdates"

    const-string v21, "Connection failed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v20, 0x3

    .line 256
    :goto_0
    return v20

    .line 217
    :cond_1
    const-string v20, ""

    invoke-static/range {v20 .. v20}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, "mcc":Ljava/lang/String;
    const-string v20, ""

    invoke-static/range {v20 .. v20}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, "mnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/AboutPageActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 220
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "operator":Ljava/lang/String;
    const-string v20, "460"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/AboutPageActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "StubAPI"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 224
    .local v12, "pref":Landroid/content/SharedPreferences;
    const-string v20, "cnVasURL"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "cnVasURL":Ljava/lang/String;
    const-string v20, "cnVasTime"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v12, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 226
    .local v4, "cnVasTime":J
    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v4

    const-wide/32 v22, 0x5265c00

    cmp-long v20, v20, v22

    if-lez v20, :cond_3

    .line 227
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/AboutPageActivity;->getCNVasURL()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 229
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "cnVasURL"

    move-object/from16 v0, v20

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v20, "cnVasTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "http:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/stub/stubUpdateCheck.as"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 236
    .end local v4    # "cnVasTime":J
    .end local v6    # "cnVasURL":Ljava/lang/String;
    .end local v12    # "pref":Landroid/content/SharedPreferences;
    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 237
    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 238
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 242
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/AboutPageActivity;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 244
    .local v19, "versionCode":Ljava/lang/String;
    const-string v20, "%s?appId=%s&callerId=%s&versionCode=%s&deviceId=%s&mcc=%s&mnc=%s&csc=%s&sdkVer=%s&pd=%s"

    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    const/16 v22, 0x1

    aput-object p1, v21, v22

    const/16 v22, 0x2

    aput-object p1, v21, v22

    const/16 v22, 0x3

    aput-object v19, v21, v22

    const/16 v22, 0x4

    aput-object v16, v21, v22

    const/16 v22, 0x5

    aput-object v9, v21, v22

    const/16 v22, 0x6

    aput-object v10, v21, v22

    const/16 v22, 0x7

    const-string v23, "ro.csc.sales_code"

    .line 247
    invoke-static/range {v23 .. v23}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x8

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x9

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/AboutPageActivity;->isPdEnabled()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 244
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 249
    .local v13, "requestUrl":Ljava/lang/String;
    const-string v20, "CheckForUpdates"

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/AboutPageActivity;->getResult(Ljava/lang/String;Ljava/net/URL;Z)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .end local v13    # "requestUrl":Ljava/lang/String;
    .end local v19    # "versionCode":Ljava/lang/String;
    :goto_1
    move/from16 v20, v14

    .line 256
    goto/16 :goto_0

    .line 251
    :catch_0
    move-exception v7

    .line 252
    .local v7, "e":Ljava/lang/Throwable;
    const-string v20, "CheckForUpdates"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v14, 0x3

    goto :goto_1
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/AboutPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Lcom/android/launcher3/AboutPageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "NULL"

    goto :goto_0
.end method

.method private getCNVasURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, "http://cn-ms.samsungapps.com/getCNVasURL.as"

    return-object v0
.end method

.method private getResult(Ljava/lang/String;Ljava/net/URL;Z)I
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "needTimeOut"    # Z

    .prologue
    .line 262
    const/4 v8, 0x3

    .line 263
    .local v8, "ret":I
    const/4 v3, 0x0

    .line 265
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 268
    .local v6, "resultCode":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 269
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 271
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz p3, :cond_1

    .line 272
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 273
    .local v0, "con":Ljava/net/URLConnection;
    const/16 v11, 0x4e20

    invoke-virtual {v0, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 274
    const/16 v11, 0x3a98

    invoke-virtual {v0, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 275
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 280
    .end local v0    # "con":Ljava/net/URLConnection;
    :goto_0
    const/4 v11, 0x0

    invoke-interface {v4, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 282
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 285
    .local v5, "parserEvent":I
    :goto_1
    const/4 v11, 0x1

    if-eq v5, v11, :cond_8

    .line 286
    packed-switch v5, :pswitch_data_0

    .line 325
    :cond_0
    :goto_2
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    .line 277
    .end local v5    # "parserEvent":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 288
    .restart local v5    # "parserEvent":I
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "tag":Ljava/lang/String;
    const-string v11, "appId"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 290
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 291
    .local v10, "type":I
    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 292
    const-string v11, "CheckForUpdates"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 340
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parserEvent":I
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v11, "CheckForUpdates"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    const/4 v8, 0x3

    .line 344
    if-eqz v3, :cond_2

    .line 346
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 352
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    return v8

    .line 294
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "parserEvent":I
    .restart local v9    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v11, "resultCode"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 295
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 296
    .restart local v10    # "type":I
    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 297
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 298
    const-string v11, "CheckForUpdates"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resultCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 344
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parserEvent":I
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_4

    .line 346
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 349
    :cond_4
    :goto_4
    throw v11

    .line 300
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "parserEvent":I
    .restart local v9    # "tag":Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v11, "resultMsg"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 301
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 302
    .restart local v10    # "type":I
    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 303
    const-string v11, "CheckForUpdates"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resultMsg: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 305
    .end local v10    # "type":I
    :cond_6
    const-string v11, "versionCode"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 306
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 307
    .restart local v10    # "type":I
    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 308
    const-string v11, "CheckForUpdates"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "versionCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 310
    .end local v10    # "type":I
    :cond_7
    const-string v11, "versionName"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 311
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 312
    .restart local v10    # "type":I
    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 313
    const-string v11, "CheckForUpdates"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "versionName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 327
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "type":I
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    .line 329
    .local v7, "resultCodeInt":I
    const/4 v11, 0x2

    if-ne v11, v7, :cond_9

    .line 330
    const/4 v8, 0x2

    .line 344
    :goto_5
    if-eqz v3, :cond_2

    .line 346
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 347
    :catch_1
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/IOException;
    const-string v11, "CheckForUpdates"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 331
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    if-nez v7, :cond_a

    .line 332
    const/4 v8, 0x0

    goto :goto_5

    .line 333
    :cond_a
    const/4 v11, 0x1

    if-ne v11, v7, :cond_b

    .line 334
    const/4 v8, 0x1

    goto :goto_5

    .line 335
    :cond_b
    const/16 v11, 0x3e8

    if-ne v11, v7, :cond_c

    .line 336
    const/16 v8, 0x3e8

    goto :goto_5

    .line 338
    :cond_c
    const/16 v8, -0x3e8

    goto :goto_5

    .line 347
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "parserEvent":I
    .end local v7    # "resultCodeInt":I
    .local v1, "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/IOException;
    const-string v11, "CheckForUpdates"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 347
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 348
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v12, "CheckForUpdates"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 286
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 135
    const v2, 0x7f110015

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mHelpTextTitle:Landroid/widget/TextView;

    .line 136
    const v2, 0x7f110016

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mHelpText:Landroid/widget/TextView;

    .line 137
    const v2, 0x7f110012

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mImageView:Landroid/widget/ImageView;

    .line 138
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    const v2, 0x7f110014

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mAppsInfo:Landroid/widget/TextView;

    .line 140
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mAppsInfo:Landroid/widget/TextView;

    const v3, 0x7f090004

    invoke-virtual {p0, v3}, Lcom/android/launcher3/AboutPageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mAppsInfo:Landroid/widget/TextView;

    new-instance v3, Lcom/android/launcher3/AboutPageActivity$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/AboutPageActivity$1;-><init>(Lcom/android/launcher3/AboutPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 151
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 154
    :cond_0
    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const v4, 0x7f090005

    invoke-virtual {p0, v4}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mHelpTextTitle:Landroid/widget/TextView;

    const v3, 0x7f09000c

    invoke-virtual {p0, v3}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/AboutPageActivity;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "licence":Ljava/lang/String;
    const v2, 0x7f11001a

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    .local v1, "openSource":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v2, Lcom/android/launcher3/AboutPageActivity$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AboutPageActivity$2;-><init>(Lcom/android/launcher3/AboutPageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v2, 0x7f110018

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    .line 167
    const v2, 0x7f110019

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mRetryButton:Landroid/widget/Button;

    .line 168
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mRetryButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/launcher3/AboutPageActivity$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/AboutPageActivity$3;-><init>(Lcom/android/launcher3/AboutPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/launcher3/AboutPageActivity$4;

    invoke-direct {v3, p0}, Lcom/android/launcher3/AboutPageActivity$4;-><init>(Lcom/android/launcher3/AboutPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity;->mAppsInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 189
    return-void
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 380
    .local v2, "retVal":Z
    if-eqz p0, :cond_0

    .line 381
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 382
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 384
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 388
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 384
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPdEnabled()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/launcher3/AboutPageActivity;->TARGET_PATH_PD_TEST:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public static jumpToSamsungApps(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 361
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v2, "directcall"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    const-string v2, "CallerType"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v2, "GUID"

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "CheckForUpdates"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AboutPageActivity;->setRequestedOrientation(I)V

    .line 118
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mCheckUpdateTask:Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mCheckUpdateTask:Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    iget v1, p0, Lcom/android/launcher3/AboutPageActivity;->mNeedUpdate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->onPostExecute(Ljava/lang/Integer;)V

    .line 132
    :cond_0
    return-void

    .line 120
    :pswitch_0
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AboutPageActivity;->setContentView(I)V

    .line 121
    invoke-direct {p0}, Lcom/android/launcher3/AboutPageActivity;->init()V

    goto :goto_0

    .line 124
    :pswitch_1
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AboutPageActivity;->setContentView(I)V

    .line 125
    invoke-direct {p0}, Lcom/android/launcher3/AboutPageActivity;->init()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f040001

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/AboutPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/AboutPageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mActionBar:Landroid/app/ActionBar;

    .line 92
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AboutPageActivity;->setRequestedOrientation(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/AboutPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    new-instance v0, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;-><init>(Lcom/android/launcher3/AboutPageActivity;Lcom/android/launcher3/AboutPageActivity$1;)V

    iput-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mCheckUpdateTask:Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity;->mCheckUpdateTask:Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void

    .line 96
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AboutPageActivity;->setContentView(I)V

    .line 97
    invoke-direct {p0}, Lcom/android/launcher3/AboutPageActivity;->init()V

    goto :goto_0

    .line 100
    :pswitch_1
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AboutPageActivity;->setContentView(I)V

    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/AboutPageActivity;->init()V

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AboutPageActivity;->setRequestedOrientation(I)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AboutPageActivity;->setContentView(I)V

    .line 107
    invoke-direct {p0}, Lcom/android/launcher3/AboutPageActivity;->init()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 393
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 398
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 395
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/AboutPageActivity;->finish()V

    .line 396
    const/4 v0, 0x1

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
