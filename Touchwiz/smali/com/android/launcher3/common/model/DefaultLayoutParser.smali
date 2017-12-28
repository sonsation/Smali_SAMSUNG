.class public abstract Lcom/android/launcher3/common/model/DefaultLayoutParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsFolderParser;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderParser;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$AppWidgetParser;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;,
        Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE:Ljava/lang/String; = "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

.field protected static final ATTR_APPSGRID_SUPPORTSET:Ljava/lang/String; = "supportSet"

.field private static final ATTR_CARRIER:Ljava/lang/String; = "carrier"

.field public static final ATTR_CLASS_NAME:Ljava/lang/String; = "className"

.field protected static final ATTR_GRID_DEFAULT:Ljava/lang/String; = "default"

.field public static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final ATTR_ICON:Ljava/lang/String; = "icon"

.field public static final ATTR_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final ATTR_ICON_RESOURCE:Ljava/lang/String; = "iconResource"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field protected static final ATTR_POST_POSITION:Ljava/lang/String; = "postPosition"

.field public static final ATTR_RESERVED_FOLDER:Ljava/lang/String; = "reservedFolder"

.field public static final ATTR_RESTORED:Ljava/lang/String; = "restored"

.field public static final ATTR_SCREEN:Ljava/lang/String; = "screen"

.field public static final ATTR_SPAN_X:Ljava/lang/String; = "spanX"

.field public static final ATTR_SPAN_Y:Ljava/lang/String; = "spanY"

.field public static final ATTR_TITLE:Ljava/lang/String; = "title"

.field public static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final ATTR_VCF:Ljava/lang/String; = "vcf"

.field public static final ATTR_WIDGET_ID:Ljava/lang/String; = "appWidgetID"

.field public static final ATTR_X:Ljava/lang/String; = "x"

.field public static final ATTR_Y:Ljava/lang/String; = "y"

.field static final CSC_PATH:Ljava/lang/String; = "/system/csc"

.field private static final INVALID_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DefaultLayoutParser"

.field public static final TAG_APPORDER:Ljava/lang/String; = "appOrder"

.field protected static final TAG_APPSGRIDINFO:Ljava/lang/String; = "appsGridInfo"

.field public static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field public static final TAG_AUTO_INSTALL:Ljava/lang/String; = "autoinstall"

.field public static final TAG_DEEP_SHORTCUT:Ljava/lang/String; = "deepshortcut"

.field protected static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field public static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field public static final TAG_HOME:Ljava/lang/String; = "home"

.field protected static final TAG_HOMEGRIDINFO:Ljava/lang/String; = "homeGridInfo"

.field public static final TAG_HOTSEAT:Ljava/lang/String; = "hotseat"

.field protected static final TAG_NON_DISABLE_APPS:Ljava/lang/String; = "nondisableapps"

.field public static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field static final XML_DISABLE_APP_SKIP_LIST:Ljava/lang/String; = "/default_disableapp_skiplist.xml"

.field private static sOmcAutoInstallApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mCSCFolderTitleKeyMap:[Ljava/lang/String;

.field protected final mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

.field protected final mContext:Landroid/content/Context;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected final mLayoutId:I

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field private mReloadPostPosition:Z

.field protected final mRootTag:Ljava/lang/String;

.field protected final mSourceRes:Landroid/content/res/Resources;

.field protected final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I
    .param p6, "rootTag"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mReloadPostPosition:Z

    .line 147
    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 149
    iput-object p3, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 152
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    .line 153
    iput-object p6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mRootTag:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    .line 156
    iput p5, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mLayoutId:I

    .line 157
    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->sOmcAutoInstallApp:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/DefaultLayoutParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mReloadPostPosition:Z

    return v0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1046
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1049
    :cond_1
    if-eq v0, v2, :cond_2

    .line 1050
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1053
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1054
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1057
    :cond_3
    return-void
.end method

.method static copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "from"    # Landroid/content/ContentValues;
    .param p1, "to"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1095
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1096
    return-void
.end method

.method private getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 5
    .param p1, "cmpName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1170
    iget-object v3, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    .line 1171
    .local v2, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 1173
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v0, :cond_1

    .line 1174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 1175
    .local v1, "i":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1181
    .end local v1    # "i":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1078
    const-string v1, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    invoke-interface {p0, v1, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1081
    .local v0, "value":I
    if-ne v0, p2, :cond_0

    .line 1082
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1084
    :cond_0
    return v0
.end method

.method public static getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 1064
    const-string v1, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1067
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    :cond_0
    return-object v0
.end method

.method public static loadOmcIfNecessary(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1109
    const-string v0, "DefaultLayoutParser"

    const-string v2, "loadOmcIfNecessary"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1112
    :cond_0
    const-string v0, "DefaultLayoutParser"

    const-string v2, "Context or ContentResolver is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_1
    :goto_0
    return-void

    .line 1116
    :cond_2
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 1117
    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->semGetDeviceOwner()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1118
    const-string v0, "DefaultLayoutParser"

    const-string v2, "DeviceOnwerMode now."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1122
    :cond_3
    const-string v0, "content://com.samsung.android.omcprovider/available_title_icon"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1124
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_4

    .line 1125
    const-string v0, "DefaultLayoutParser"

    const-string v2, "loadOmcIfNecessary uri is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1129
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->sOmcAutoInstallApp:Ljava/util/HashMap;

    .line 1131
    const/4 v6, 0x0

    .line 1133
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1134
    if-eqz v6, :cond_8

    .line 1135
    :cond_5
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1136
    const-string v0, "package"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1137
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 1140
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1141
    .local v11, "title":Ljava/lang/String;
    if-nez v11, :cond_6

    .line 1142
    const-string v11, ""

    .line 1144
    :cond_6
    const-string v0, "icon_drawable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 1145
    .local v9, "icon":[B
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v9, :cond_5

    .line 1148
    :cond_7
    new-instance v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser$1;)V

    .line 1149
    .local v12, "update":Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;
    iput-object v10, v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->iconPackage:Ljava/lang/String;

    .line 1150
    iput-object v11, v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->title:Ljava/lang/String;

    .line 1151
    iput-object v9, v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->icon:[B

    .line 1152
    sget-object v0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->sOmcAutoInstallApp:Ljava/util/HashMap;

    iget-object v2, v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    const-string v0, "DefaultLayoutParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadOmcIfNecessary insert package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-string v0, "DefaultLayoutParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadOmcIfNecessary insert title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    if-nez v9, :cond_5

    .line 1156
    const-string v0, "DefaultLayoutParser"

    const-string v2, "loadOmcIfNecessary insert icon is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1160
    .end local v9    # "icon":[B
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "update":Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;
    :catch_0
    move-exception v8

    .line 1161
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "DefaultLayoutParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception loading omc title and icon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1163
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1163
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1163
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method


# virtual methods
.method protected addApps(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;I)J
    .locals 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "type"    # I

    .prologue
    .line 200
    iget-boolean v6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mReloadPostPosition:Z

    if-eqz v6, :cond_1

    .line 201
    const-wide/16 v0, -0x1

    .line 216
    :cond_0
    :goto_0
    return-wide v0

    .line 204
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    invoke-interface {v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v0

    .line 205
    .local v0, "id":J
    iget-object v6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v3

    .line 206
    .local v3, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 207
    .local v4, "userSerialNumber":J
    invoke-static {p3, v4, v5}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v2

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v7, "intent"

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v7, "itemType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    iget-object v6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v7, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    iget-object v6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    iget-object v7, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-interface {v6, v7, p1, v8}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 214
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected addShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "type"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v7, 0x1

    .line 181
    iget-boolean v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mReloadPostPosition:Z

    if-eqz v4, :cond_1

    move-wide v0, v2

    .line 195
    :cond_0
    :goto_0
    return-wide v0

    .line 185
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    invoke-interface {v4}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v0

    .line 186
    .local v0, "id":J
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v5, "intent"

    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v5, "title"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v5, "itemType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v5, "spanX"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v5, "spanY"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v5, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;

    iget-object v5, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-interface {v4, v5, p1, v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 193
    goto :goto_0
.end method

.method public chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "omcPath"    # Ljava/lang/String;
    .param p2, "cscPath"    # Ljava/lang/String;

    .prologue
    .line 1099
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v0, "omcFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    const-string v1, "DefaultLayoutParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOMCFilePath => omcFile exists, omc file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will return."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    .end local p1    # "omcPath":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1104
    .restart local p1    # "omcPath":Ljava/lang/String;
    :cond_0
    const-string v1, "DefaultLayoutParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOMCFilePath => omcFile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not exists, csc file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will return."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .line 1105
    goto :goto_0
.end method

.method protected getCSCFolderTitleWithTranslation(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7c

    .line 1017
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCSCFolderTitleKeyMap:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1018
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0009

    .line 1019
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCSCFolderTitleKeyMap:[Ljava/lang/String;

    .line 1022
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCSCFolderTitleKeyMap:[Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCSCFolderTitleKeyMap:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_3

    .line 1023
    iget-object v5, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mCSCFolderTitleKeyMap:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v3, v5, v4

    .line 1024
    .local v3, "titleList":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1026
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 1027
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    iget-object v7, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1026
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1028
    .local v1, "resId":I
    if-lez v1, :cond_1

    .line 1029
    iget-object v4, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v1    # "resId":I
    :cond_1
    :goto_1
    move-object v2, p1

    .line 1040
    .end local v3    # "titleList":Ljava/lang/String;
    .end local p1    # "title":Ljava/lang/String;
    .local v2, "title":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 1031
    .end local v2    # "title":Ljava/lang/String;
    .restart local v3    # "titleList":Ljava/lang/String;
    .restart local p1    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DefaultLayoutParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not catch getIdentifier from resource : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1023
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "titleList":Ljava/lang/String;
    :cond_3
    move-object v2, p1

    .line 1040
    .end local p1    # "title":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_2
.end method

.method protected abstract getFolderElementsMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getHiddenApps()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getLayoutElementsMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation
.end method

.method isPostPositionInsertCondition(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x1

    .line 257
    iget-boolean v1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mReloadPostPosition:Z

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    .local v0, "updateToSAPP":Z
    :goto_1
    if-nez v0, :cond_0

    .line 264
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v1

    if-nez v1, :cond_0

    .line 265
    const/4 v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "updateToSAPP":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method isReloadPostPosition()Z
    .locals 1

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mReloadPostPosition:Z

    return v0
.end method

.method public loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 173
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->parseLayout(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 176
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DefaultLayoutParser"

    const-string v2, "Got exception parsing layout."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected abstract parseLayout(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation
.end method

.method public setReloadPostPosition(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1185
    iput-boolean p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mReloadPostPosition:Z

    .line 1186
    return-void
.end method
