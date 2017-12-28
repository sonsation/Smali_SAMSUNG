.class Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;
.super Ljava/lang/Object;
.source "HomeRestoreLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZeroPageParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$2400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 515
    const-string v1, "Launcher.HomeRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backuped zero page contents : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$2400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$2400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$2500(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageContents(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 518
    .local v0, "zeroPageEnable":Z
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$2600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    .line 519
    const-string v1, "Launcher.HomeRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore zeroPageEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .end local v0    # "zeroPageEnable":Z
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    return-wide v2

    .line 521
    :cond_1
    const-string v1, "Launcher.HomeRestore"

    const-string v2, "zero page contents mismatch"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.spage"

    const-string v3, "com.samsung.android.app.spage.main.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .line 524
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$2700(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageContents(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 525
    const-string v1, "Launcher.HomeRestore"

    const-string v2, "There is not exist zero page contents in backup data.But exist BixbyHome"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$2800(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    goto :goto_0

    .line 528
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 529
    .restart local v0    # "zeroPageEnable":Z
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$2900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    .line 530
    const-string v1, "Launcher.HomeRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore zeroPageEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
