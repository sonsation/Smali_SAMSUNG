.class Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;
.super Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;
.source "HomeRestoreLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreAppShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V
    .locals 1

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;->mIsRestore:Z

    .line 578
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
.method protected getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 583
    const-string v2, "restored"

    invoke-static {p1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "restoredStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 585
    .local v0, "restored":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 587
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$3400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "restored"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$3500(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 590
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$3600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, p2, p3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getComponent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2
.end method
