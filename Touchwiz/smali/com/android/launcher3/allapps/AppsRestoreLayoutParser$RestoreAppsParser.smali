.class Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;
.super Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;
.source "AppsRestoreLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreAppsParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V
    .locals 1

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;->mIsRestore:Z

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
.method protected getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v2, "restored"

    invoke-static {p1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "restoredStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 230
    .local v0, "restored":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 232
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1500(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "restored"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1600(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$1700(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, p2, p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getComponent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2
.end method
