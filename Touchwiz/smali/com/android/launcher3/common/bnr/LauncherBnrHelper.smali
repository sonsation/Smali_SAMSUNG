.class public Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
.super Ljava/lang/Object;
.source "LauncherBnrHelper.java"


# static fields
.field public static final BNR_ERROR_CODE_INVALID_DATA:I = 0x3

.field public static final BNR_ERROR_CODE_STORAGE_FULL:I = 0x2

.field public static final BNR_ERROR_CODE_SUCCESS:I = 0x0

.field public static final BNR_ERROR_CODE_UNKNOWN:I = 0x1

.field public static final BNR_RESULT_FAIL:I = 0x1

.field public static final BNR_RESULT_OK:I = 0x0

.field private static final CHANGED_COMPONENT_LIST_XML:Ljava/lang/String; = "/change_native_packages.xml"

.field public static final HOMESCREEN_BACKUP_EXML:Ljava/lang/String; = "/homescreen.exml"

.field private static final TAG:Ljava/lang/String; = "LauncherBnrHelper"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_WIDGET:Ljava/lang/String; = "widget"

.field private static sCallBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static sChangedComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sChangedWidgetComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

.field public static sIsEasyMode:Z

.field public static sIsHomeOnly:Z


# instance fields
.field private mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

.field private mRestoredTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 77
    sput-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    return-void
.end method

.method private addApacheLicense(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    const-string v0, "\n\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 915
    const-string v0, "\nCopyright (C) 2016 The Android Open Source Project\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n  http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License.\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method private addChangedComponent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "before"    # Landroid/content/ComponentName;
    .param p3, "after"    # Landroid/content/ComponentName;

    .prologue
    .line 769
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    .line 775
    .local v2, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    .line 777
    .local v1, "beforeMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 778
    .local v0, "afterMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 779
    sget-object v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v3, "LauncherBnrHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChangedComponent before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    sget-object v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v3, "LauncherBnrHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChangedComponent before = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .param p2, "before"    # Landroid/content/ComponentName;
    .param p3, "after"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 791
    .local p1, "widgetsAll":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 796
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 797
    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChangedWidgetComponent before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    :cond_3
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChangedWidgetComponent before = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private backupCategory(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 472
    const-string v6, "\n"

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    const-string v6, "category"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 476
    .local v2, "category":Ljava/lang/StringBuffer;
    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 477
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 478
    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    .line 479
    .local v0, "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    invoke-interface {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->backupCategory()Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, "subCategory":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 482
    if-lez v4, :cond_0

    .line 483
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 485
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    .end local v5    # "subCategory":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "c":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    const-string v6, "category"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    const-string v6, "LauncherBnrHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backupCategory category : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 496
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 497
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v7, 0x3

    iput v7, v6, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 498
    const-string v6, "LauncherBnrHelper"

    const-string v7, "backupCategory category is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_3
    return-void
.end method

.method private backupLayout(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveFile"    # Ljava/io/File;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener;

    .prologue
    .line 174
    const/4 v6, 0x0

    .line 175
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 177
    .local v9, "newFos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 178
    .local v12, "writer":Ljava/io/StringWriter;
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->getEncryptStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;

    move-result-object v9

    .line 182
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 184
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_2
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 185
    const-string v13, "UTF-8"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 187
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->backupCategory(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v13, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v13, :cond_2

    .line 190
    sget-object v13, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    .line 191
    .local v3, "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v11, v1, v14}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v14, v14, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 197
    .end local v3    # "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v13, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x3

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 202
    :cond_2
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 203
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v13, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v13, :cond_5

    .line 215
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 216
    .local v8, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/16 v13, 0x400

    new-array v4, v13, [B

    .line 220
    .local v4, "buffer":[B
    :goto_1
    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v2, v4, v13, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    .local v10, "readCount":I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_5

    .line 221
    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 224
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "readCount":I
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v13

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "writer":Ljava/io/StringWriter;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    move-object v5, v13

    .line 225
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 227
    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bnr fail, occur exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    if-eqz v9, :cond_3

    .line 234
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 236
    :cond_3
    if-eqz v6, :cond_4

    .line 237
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 240
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    return-void

    .line 204
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :catch_1
    move-exception v5

    .line 205
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 207
    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RuntimeException while generate XML : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 224
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v13

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "writer":Ljava/io/StringWriter;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    move-object v5, v13

    goto :goto_3

    .line 208
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :catch_3
    move-exception v5

    .line 209
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 211
    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error occurred while generate XML : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 224
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_4
    move-exception v13

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "writer":Ljava/io/StringWriter;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_6
    move-object v5, v13

    goto/16 :goto_3

    .line 233
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :cond_5
    if-eqz v9, :cond_6

    .line 234
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 236
    :cond_6
    if-eqz v7, :cond_a

    .line 237
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 228
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v12    # "writer":Ljava/io/StringWriter;
    :catch_5
    move-exception v5

    .line 229
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x1

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v14, 0x2

    iput v14, v13, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 231
    const-string v13, "LauncherBnrHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bnr fail, occur exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 233
    if-eqz v9, :cond_7

    .line 234
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 236
    :cond_7
    if-eqz v6, :cond_4

    .line 237
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_4

    .line 233
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_8
    if-eqz v9, :cond_8

    .line 234
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 236
    :cond_8
    if-eqz v6, :cond_9

    .line 237
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_9
    throw v13

    .line 233
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 228
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 224
    .end local v12    # "writer":Ljava/io/StringWriter;
    :catch_7
    move-exception v13

    goto/16 :goto_2

    :catch_8
    move-exception v13

    goto :goto_6

    :catch_9
    move-exception v13

    goto/16 :goto_5

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "writer":Ljava/io/StringWriter;
    :cond_a
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method private changeMode(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toHomeOnly"    # Z

    .prologue
    .line 685
    const-string v2, "LauncherBnrHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeMode toHomeOnly : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    .line 688
    .local v0, "favoritesProvider":Lcom/android/launcher3/common/model/FavoritesProvider;
    if-eqz v0, :cond_2

    .line 689
    sget-boolean v2, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    .line 691
    .local v1, "mode":I
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    .line 693
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->recreateLauncher(Landroid/content/Context;)V

    .line 698
    .end local v1    # "mode":I
    :cond_0
    :goto_1
    return-void

    .line 689
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 696
    :cond_2
    const-string v2, "LauncherBnrHelper"

    const-string v3, "FavoritesProvider instance is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 578
    if-eqz p0, :cond_0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close inputStream IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 588
    if-eqz p0, :cond_0

    .line 589
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close outputStream IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 9
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 597
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "fileList":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 601
    const-string v4, "LauncherBnrHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteDir, fileList.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    .line 603
    .local v3, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 605
    const-string v6, "LauncherBnrHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delete failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 611
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 612
    return-void
.end method

.method private endLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 943
    const-string v0, "\n\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 944
    const-string v0, "LCExtractorHome"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    const-string v0, "favorites"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 949
    :goto_0
    return-void

    .line 947
    :cond_0
    const-string v0, "appOrder"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public static getChangedComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 615
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public static getChangedWidgetComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 619
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public static getComponent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "restored"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 628
    .local v4, "pkgMgr":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "pkgMgr":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    move-object v5, v0

    .line 652
    :goto_1
    return-object v5

    .line 629
    .restart local v4    # "pkgMgr":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 630
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x1

    :try_start_2
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, "packages":[Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-direct {v1, v5, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 632
    .end local v0    # "cn":Landroid/content/ComponentName;
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    .end local v1    # "cn":Landroid/content/ComponentName;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_0

    .line 634
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "packages":[Ljava/lang/String;
    .end local v4    # "pkgMgr":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 635
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    const-string v5, "LauncherBnrHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid componentName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_2

    .line 638
    invoke-static {p0, v0}, Lcom/android/launcher3/common/bnr/scloud/SCloudBnr;->isWillRestored(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 639
    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 640
    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    goto :goto_1

    .line 642
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 647
    :cond_2
    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    sget-object v5, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    goto :goto_1

    .line 634
    .end local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v3    # "packages":[Ljava/lang/String;
    .restart local v4    # "pkgMgr":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "cn":Landroid/content/ComponentName;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    goto :goto_2
.end method

.method public static getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "container"    # Ljava/lang/String;

    .prologue
    .line 525
    const-string v0, "favorites"

    .line 526
    .local v0, "tableName":Ljava/lang/String;
    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 538
    :goto_0
    return-object v1

    .line 527
    :cond_0
    const-string v1, "favorites_easy"

    goto :goto_0

    .line 528
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    .line 529
    const-string v0, "favorites_standard"

    .line 532
    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-eqz v1, :cond_4

    .line 533
    const-string v0, "favorites_homeApps"

    :cond_3
    :goto_1
    move-object v1, v0

    .line 538
    goto :goto_0

    .line 534
    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-nez v1, :cond_3

    .line 535
    const-string v0, "favorites_homeOnly"

    goto :goto_1
.end method

.method public static getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "container"    # Ljava/lang/String;

    .prologue
    .line 503
    sget-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-static {p0, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2
    .param p0, "container"    # Ljava/lang/String;
    .param p1, "isHomeOnly"    # Z

    .prologue
    .line 507
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 509
    .local v0, "favoritesUri":Landroid/net/Uri;
    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 521
    :goto_0
    return-object v1

    .line 510
    :cond_0
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Easy;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 511
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    .line 512
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Standard;->CONTENT_URI:Landroid/net/Uri;

    .line 515
    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 516
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    :cond_3
    :goto_1
    move-object v1, v0

    .line 521
    goto :goto_0

    .line 517
    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 518
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    .locals 2

    .prologue
    .line 97
    const-class v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    .line 100
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sInstance:Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    .line 909
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "container"    # Ljava/lang/String;

    .prologue
    .line 560
    const-string v0, "workspaceScreens"

    .line 561
    .local v0, "tableName":Ljava/lang/String;
    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 573
    :goto_0
    return-object v1

    .line 562
    :cond_0
    const-string v1, "workspaceScreens_easy"

    goto :goto_0

    .line 563
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    .line 564
    const-string v0, "workspaceScreens_standard"

    .line 567
    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-eqz v1, :cond_4

    .line 568
    const-string v0, "workspaceScreens_homeApps"

    :cond_3
    :goto_1
    move-object v1, v0

    .line 573
    goto :goto_0

    .line 569
    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    if-nez v1, :cond_3

    .line 570
    const-string v0, "workspaceScreens_homeOnly"

    goto :goto_1
.end method

.method public static getWorkspaceScreenUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2
    .param p0, "container"    # Ljava/lang/String;
    .param p1, "isHomeOnly"    # Z

    .prologue
    .line 542
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 543
    .local v0, "workspaceScreenUri":Landroid/net/Uri;
    const-string v1, "easy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 556
    :goto_0
    return-object v1

    .line 544
    :cond_0
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_Easy;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 546
    :cond_1
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_2

    .line 547
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_Standard;->CONTENT_URI:Landroid/net/Uri;

    .line 550
    :cond_2
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 551
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    :cond_3
    :goto_1
    move-object v1, v0

    .line 556
    goto :goto_0

    .line 552
    :cond_4
    const-string v1, "homeOnly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 553
    sget-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private loadChangedComponentForPackage(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 851
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 853
    .local v2, "depth":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 855
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_2

    :cond_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 856
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 860
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 861
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 865
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 866
    .local v6, "size":I
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentForPackage item list size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v3, v8, :cond_4

    .line 869
    add-int/lit8 v5, v3, 0x1

    .local v5, "j":I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 870
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 871
    .local v1, "before":Landroid/content/ComponentName;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 872
    .local v0, "after":Landroid/content/ComponentName;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedComponent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 869
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 868
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "before":Landroid/content/ComponentName;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 875
    .end local v5    # "j":I
    :cond_4
    return-void
.end method

.method private loadChangedComponentForWidget(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 879
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 881
    .local v2, "depth":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    .line 883
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    .line 884
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 888
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 889
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 893
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 894
    .local v6, "size":I
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadChangedComponentForWidget item list size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 898
    .local v8, "widgetsAll":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    add-int/lit8 v9, v6, -0x1

    if-ge v3, v9, :cond_4

    .line 899
    add-int/lit8 v5, v3, 0x1

    .local v5, "j":I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 900
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 901
    .local v1, "before":Landroid/content/ComponentName;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 902
    .local v0, "after":Landroid/content/ComponentName;
    invoke-direct {p0, v8, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 899
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 898
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "before":Landroid/content/ComponentName;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 905
    .end local v5    # "j":I
    :cond_4
    return-void
.end method

.method private loadChangedComponentFromPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 809
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/change_native_packages.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 812
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 813
    const-string v8, "LauncherBnrHelper"

    const-string v9, "loadChangedComponentFromPath there is no file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    const/4 v3, 0x0

    .line 819
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 820
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 821
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 822
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "utf-8"

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 825
    :cond_2
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    .line 826
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 829
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 830
    .local v5, "name":Ljava/lang/String;
    const-string v8, "package"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 831
    invoke-direct {p0, p1, v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentForPackage(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 836
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 837
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 839
    if-eqz v3, :cond_0

    .line 841
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 842
    :catch_1
    move-exception v0

    .line 843
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_3
    :try_start_4
    const-string v8, "widget"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 833
    invoke-direct {p0, p1, v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentForWidget(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 839
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_0
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v3, :cond_4

    .line 841
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 844
    :cond_4
    :goto_4
    throw v8

    .line 839
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_5
    if-eqz v4, :cond_6

    .line 841
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    .line 844
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 842
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 843
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "LauncherBnrHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadChangedComponentFromPath exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 844
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_3
    move-exception v0

    .line 843
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadChangedComponentFromPath exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 839
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    goto :goto_3

    .line 836
    :catch_4
    move-exception v0

    goto/16 :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_6
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private loadChangedComponentFromRes(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 729
    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedComponent:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 731
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0007

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, "cmpList":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    .line 733
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v3, v6

    .line 734
    .local v2, "cmp":Ljava/lang/String;
    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 736
    .local v4, "key":[Ljava/lang/String;
    array-length v9, v4

    if-ne v9, v11, :cond_0

    .line 737
    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 738
    aget-object v9, v4, v7

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 739
    .local v1, "before":Landroid/content/ComponentName;
    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    .line 740
    aget-object v9, v4, v10

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 741
    .local v0, "after":Landroid/content/ComponentName;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedComponent(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 733
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "before":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 747
    .end local v2    # "cmp":Ljava/lang/String;
    .end local v3    # "cmpList":[Ljava/lang/String;
    .end local v4    # "key":[Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sChangedWidgetComponent:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 749
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0008

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 750
    .restart local v3    # "cmpList":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v6, v3

    if-lez v6, :cond_3

    .line 752
    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v5

    .line 754
    .local v5, "widgetsAll":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    array-length v8, v3

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v2, v3, v6

    .line 755
    .restart local v2    # "cmp":Ljava/lang/String;
    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 756
    .restart local v4    # "key":[Ljava/lang/String;
    array-length v9, v4

    if-ne v9, v11, :cond_2

    .line 757
    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 758
    aget-object v9, v4, v7

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 759
    .restart local v1    # "before":Landroid/content/ComponentName;
    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    .line 760
    aget-object v9, v4, v10

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 761
    .restart local v0    # "after":Landroid/content/ComponentName;
    invoke-direct {p0, v5, v1, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addChangedWidgetComponent(Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 754
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "before":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 766
    .end local v2    # "cmp":Ljava/lang/String;
    .end local v3    # "cmpList":[Ljava/lang/String;
    .end local v4    # "key":[Ljava/lang/String;
    .end local v5    # "widgetsAll":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_3
    return-void
.end method

.method private makeDebugLayoutFile(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fis"    # Ljava/io/FileInputStream;
    .param p3, "newFis"    # Ljava/io/InputStream;

    .prologue
    .line 656
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/homescreen_original.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .local v4, "saveFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 659
    .local v2, "newFos":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 660
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 663
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    .end local v2    # "newFos":Ljava/io/OutputStream;
    .local v3, "newFos":Ljava/io/OutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "data":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    .line 667
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 669
    .end local v0    # "data":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 670
    .end local v3    # "newFos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "newFos":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    const-string v5, "LauncherBnrHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "debug mode error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    if-eqz p3, :cond_1

    .line 673
    invoke-static {p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 675
    :cond_1
    if-eqz p2, :cond_2

    .line 676
    invoke-static {p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 678
    :cond_2
    if-eqz v2, :cond_3

    .line 679
    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 682
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 672
    .end local v2    # "newFos":Ljava/io/OutputStream;
    .restart local v0    # "data":I
    .restart local v3    # "newFos":Ljava/io/OutputStream;
    :cond_4
    if-eqz p3, :cond_5

    .line 673
    invoke-static {p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 675
    :cond_5
    if-eqz p2, :cond_6

    .line 676
    invoke-static {p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 678
    :cond_6
    if-eqz v3, :cond_a

    .line 679
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    move-object v2, v3

    .end local v3    # "newFos":Ljava/io/OutputStream;
    .restart local v2    # "newFos":Ljava/io/OutputStream;
    goto :goto_2

    .line 672
    .end local v0    # "data":I
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz p3, :cond_7

    .line 673
    invoke-static {p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 675
    :cond_7
    if-eqz p2, :cond_8

    .line 676
    invoke-static {p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 678
    :cond_8
    if-eqz v2, :cond_9

    .line 679
    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_9
    throw v5

    .line 672
    .end local v2    # "newFos":Ljava/io/OutputStream;
    .restart local v3    # "newFos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "newFos":Ljava/io/OutputStream;
    .restart local v2    # "newFos":Ljava/io/OutputStream;
    goto :goto_3

    .line 669
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v2    # "newFos":Ljava/io/OutputStream;
    .restart local v0    # "data":I
    .restart local v3    # "newFos":Ljava/io/OutputStream;
    :cond_a
    move-object v2, v3

    .end local v3    # "newFos":Ljava/io/OutputStream;
    .restart local v2    # "newFos":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static registerBnrCallBack(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "callback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;>;"
    sput-object p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method private restoreLayout(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "saveFile"    # Ljava/io/File;
    .param p4, "debugLevel"    # I
    .param p5, "listener"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener;

    .prologue
    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 342
    .local v7, "newIs":Ljava/io/InputStream;
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 343
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentFromRes(Landroid/content/Context;)V

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->loadChangedComponentFromPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    const/16 v9, 0x3ec

    move/from16 v0, p4

    if-ne v0, v9, :cond_3

    .line 348
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;

    move-result-object v7

    .line 350
    if-eqz v7, :cond_7

    .line 351
    invoke-direct {p0, p2, v5, v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->makeDebugLayoutFile(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    if-eqz v7, :cond_0

    .line 391
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 393
    :cond_0
    if-eqz v5, :cond_1

    .line 394
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_1
    move-object v4, v5

    .line 397
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-void

    .line 355
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    .line 356
    .local v6, "launcherModel":Lcom/android/launcher3/LauncherModel;
    if-eqz v6, :cond_4

    .line 357
    const-string v9, "LauncherBnrHelper"

    const-string v10, "Stop loader before restore layout"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 359
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/launcher3/LauncherModel;->setHasLoaderCompletedOnce(Z)V

    .line 361
    :cond_4
    sget-object v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    move-object v5, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    .line 362
    .local v1, "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :try_start_4
    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;

    move-result-object v7

    .line 365
    if-eqz v7, :cond_5

    .line 366
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 367
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 368
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "utf-8"

    invoke-interface {v8, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 370
    iget-object v10, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    invoke-interface {v1, p1, v8, v10, v11}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->restoreLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 371
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 374
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    iget-object v10, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v10, v10, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 375
    iget-object v10, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v11, 0x3

    iput v11, v10, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 378
    :cond_6
    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v4

    .line 379
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    .end local v6    # "launcherModel":Lcom/android/launcher3/LauncherModel;
    :cond_7
    move-object v4, v5

    .line 390
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    if-eqz v7, :cond_8

    .line 391
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 393
    :cond_8
    if-eqz v4, :cond_2

    .line 394
    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .line 381
    :catch_0
    move-exception v9

    :goto_2
    move-object v2, v9

    .line 382
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 383
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 384
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bnr fail, occur exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    if-eqz v7, :cond_9

    .line 391
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 393
    :cond_9
    if-eqz v4, :cond_2

    .line 394
    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 385
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 386
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 387
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x2

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 388
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bnr fail, occur exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 390
    if-eqz v7, :cond_a

    .line 391
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 393
    :cond_a
    if-eqz v4, :cond_2

    .line 394
    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 390
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v7, :cond_b

    .line 391
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    .line 393
    :cond_b
    if-eqz v4, :cond_c

    .line 394
    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/InputStream;)V

    :cond_c
    throw v9

    .line 381
    :catch_2
    move-exception v9

    :goto_6
    move-object v2, v9

    goto :goto_3

    .line 390
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 385
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 381
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private startLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 929
    const-string v0, "\n\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 930
    const-string v0, "LCExtractorHome"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    const-string v0, "favorites"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 932
    const-string v0, "xmlns:launcher"

    const-string v1, "http://schemas.android.com/apk/res/com.sec.android.app.launcher"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 939
    :goto_0
    return-void

    .line 935
    :cond_0
    const-string v0, "appOrder"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 936
    const-string v0, "xmlns:launcher"

    const-string v1, "http://schemas.android.com/apk/res/com.sec.android.app.launcher"

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup source : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 113
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 115
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 117
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 116
    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 118
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 119
    const-string v9, "EMPTY_DATABASE_CREATED"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 120
    const-string v9, "home_only_mode"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 122
    :cond_0
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup sIsHomeOnly = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 126
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 127
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 130
    :cond_2
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "fileList":[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 134
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dir fileList.length : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    array-length v10, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_5

    aget-object v6, v5, v9

    .line 136
    .local v6, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_3

    .line 138
    const-string v11, "LauncherBnrHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", delete failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 143
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fileList":[Ljava/lang/String;
    .end local v6    # "filename":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 146
    :cond_5
    sget-object v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 147
    :cond_6
    const-string v9, "LauncherBnrHelper"

    const-string v10, "sBackupCallBack is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 149
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 150
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_1
    monitor-exit p0

    return-void

    .line 154
    :cond_7
    :try_start_1
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/homescreen.exml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v8, "saveFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_8

    .line 157
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :cond_8
    :try_start_3
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, p1, v8, v0, v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->backupLayout(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    .line 169
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v8}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 109
    .end local v2    # "dir":Ljava/io/File;
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "saveFile":Ljava/io/File;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 158
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v7    # "prefs":Landroid/content/SharedPreferences;
    .restart local v8    # "saveFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 159
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string v9, "LauncherBnrHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backup IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 161
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 162
    iget-object v9, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public extractXML(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlFileName"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    sput-boolean v14, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 405
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/LCExtractor"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v11, "saveFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 409
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 416
    :cond_0
    const/4 v6, 0x0

    .line 417
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 419
    .local v9, "newFos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 420
    .local v13, "writer":Ljava/io/StringWriter;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    move-object v9, v7

    .line 424
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    .line 426
    .local v12, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_3
    invoke-interface {v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 427
    const-string v14, "UTF-8"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 429
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->addApacheLicense(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->startLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 432
    sget-object v14, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;

    .line 433
    .local v3, "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v12, v1, v15}, Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;->backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 439
    .end local v3    # "bnrCallBack":Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;
    :catch_0
    move-exception v5

    .line 440
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RuntimeException while generate XML : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 441
    const/4 v14, 0x0

    .line 459
    if-eqz v9, :cond_1

    .line 460
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 462
    :cond_1
    if-eqz v7, :cond_2

    .line 463
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 467
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "newFos":Ljava/io/OutputStream;
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v13    # "writer":Ljava/io/StringWriter;
    :cond_2
    :goto_1
    return v14

    .line 410
    :catch_1
    move-exception v5

    .line 411
    .local v5, "e":Ljava/io/IOException;
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "extractXML createNewFile IOException : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v14, 0x0

    goto :goto_1

    .line 436
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "newFos":Ljava/io/OutputStream;
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v13    # "writer":Ljava/io/StringWriter;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->endLCExtractorTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 437
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 438
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 444
    :try_start_6
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v13}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 445
    .local v8, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 448
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/16 v14, 0x400

    new-array v4, v14, [B

    .line 449
    .local v4, "buffer":[B
    :goto_2
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v2, v4, v14, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    .local v10, "readCount":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_5

    .line 450
    const/4 v14, 0x0

    invoke-virtual {v9, v4, v14, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 452
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "readCount":I
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v5

    move-object v6, v7

    .line 453
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "writer":Ljava/io/StringWriter;
    .local v5, "e":Ljava/lang/RuntimeException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_7
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RuntimeException : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 454
    const/4 v14, 0x0

    .line 459
    if-eqz v9, :cond_4

    .line 460
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 462
    :cond_4
    if-eqz v6, :cond_2

    .line 463
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 459
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "buffer":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v10    # "readCount":I
    .restart local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v13    # "writer":Ljava/io/StringWriter;
    :cond_5
    if-eqz v9, :cond_6

    .line 460
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 462
    :cond_6
    if-eqz v7, :cond_7

    .line 463
    invoke-static {v7}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 467
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 455
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "readCount":I
    .end local v12    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v13    # "writer":Ljava/io/StringWriter;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    .line 456
    .local v5, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v14, "LauncherBnrHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 457
    const/4 v14, 0x0

    .line 459
    if-eqz v9, :cond_8

    .line 460
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 462
    :cond_8
    if-eqz v6, :cond_2

    .line 463
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 459
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v9, :cond_9

    .line 460
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    .line 462
    :cond_9
    if-eqz v6, :cond_a

    .line 463
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->close(Ljava/io/OutputStream;)V

    :cond_a
    throw v14

    .line 459
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "writer":Ljava/io/StringWriter;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 455
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 452
    .end local v13    # "writer":Ljava/io/StringWriter;
    :catch_5
    move-exception v5

    goto :goto_3
.end method

.method public recreateLauncher(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 701
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 702
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper$1;-><init>(Lcom/android/launcher3/common/bnr/LauncherBnrHelper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 726
    return-void
.end method

.method public declared-synchronized restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "debugLevel"    # I
    .param p5, "listener"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener;

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore source : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 248
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 250
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 252
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 251
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 253
    .local v11, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const-string v1, "home_only_mode"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    .line 257
    :cond_0
    const-string v1, "LauncherBnrHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore sIsHomeOnly = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsHomeOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 261
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    .line 265
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/homescreen.exml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v4, "saveFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sCallBack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 268
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 269
    const-string v1, "LauncherBnrHelper"

    const-string v2, "restore file not exist or sRestoreCallBack is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 274
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->restoreLayout(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    .line 276
    const/4 v10, 0x0

    .line 277
    .local v10, "needChangeMode":Z
    const/4 v13, 0x0

    .line 278
    .local v13, "toHomeOnly":Z
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 279
    const-string v1, "LauncherBnrHelper"

    const-string v2, "mRestoredTable size is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 281
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    .line 316
    .end local v10    # "needChangeMode":Z
    :cond_5
    :goto_1
    const-string v1, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 317
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v7, :cond_6

    .line 318
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    const-string v1, "LauncherBnrHelper"

    const-string v2, "post position shared pf deleted successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrListener;->restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V

    .line 325
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mBnrResult:Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    iget v1, v1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 326
    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 327
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 331
    :cond_7
    if-eqz v10, :cond_c

    .line 332
    invoke-direct {p0, p1, v13}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->changeMode(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    .end local v4    # "saveFile":Ljava/io/File;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v13    # "toHomeOnly":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 282
    .restart local v4    # "saveFile":Ljava/io/File;
    .restart local v10    # "needChangeMode":Z
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    .restart local v13    # "toHomeOnly":Z
    :cond_8
    :try_start_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 283
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-eqz v1, :cond_9

    .line 284
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    :goto_2
    sget-boolean v1, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 290
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 292
    .local v12, "tableName":Ljava/lang/String;
    const-string v1, "favorites"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 293
    const-string v1, "LauncherBnrHelper"

    const-string v2, "change mode (restored table count is 1)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v10, 0x1

    .line 295
    const-string v1, "favorites_homeOnly"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 286
    .end local v12    # "tableName":Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const-string v2, "favorites_easy"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 299
    :cond_a
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 300
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 301
    .local v8, "homeAppsTableName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->mRestoredTable:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 303
    .local v9, "homeOnlyTableName":Ljava/lang/String;
    const-string v1, "favorites_homeApps"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 304
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_b

    .line 305
    const-string v1, "LauncherBnrHelper"

    const-string v2, "change mode (restored table count is 2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 307
    :cond_b
    const-string v1, "favorites_homeOnly"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 308
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 309
    const-string v1, "LauncherBnrHelper"

    const-string v2, "change mode (restored table count is 2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v13, 0x1

    move v10, v13

    .local v10, "needChangeMode":I
    goto/16 :goto_1

    .line 334
    .end local v8    # "homeAppsTableName":Ljava/lang/String;
    .end local v9    # "homeOnlyTableName":Ljava/lang/String;
    .end local v10    # "needChangeMode":I
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->recreateLauncher(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
