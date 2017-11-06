.class final Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;
.super Ljava/lang/Object;
.source "TabController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TabTalkBack"
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field private mAccessibilityEventRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TabHost;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tabHost"    # Landroid/widget/TabHost;

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mHandler:Landroid/os/Handler;

    .line 331
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mContext:Landroid/content/Context;

    .line 332
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mTabHost:Landroid/widget/TabHost;

    .line 333
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->setAccessibilityEventRunnable(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->setTabViewTts(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;
    .param p1, "x1"    # I

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->setTabsTts(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->speechCurrentTab()V

    return-void
.end method

.method private getTabOrderText(II)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .param p2, "tabCount"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_tab_n_of_n:I

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTabTts(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p1, "tabText"    # Ljava/lang/CharSequence;
    .param p2, "position"    # I
    .param p3, "tabCount"    # I

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_tab:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->getTabOrderText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setAccessibilityEventRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mAccessibilityEventRunnable:Ljava/lang/Runnable;

    .line 389
    return-void
.end method

.method private setTabViewTts(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "tabCount"    # I

    .prologue
    .line 400
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "tab":Landroid/view/View;
    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 406
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->getTabTts(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTabsTts(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 351
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 352
    .local v1, "tabCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 353
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->setTabViewTts(II)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    const/4 v2, -0x1

    if-le p1, v2, :cond_1

    .line 356
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->setTabViewTts(II)V

    .line 358
    :cond_1
    return-void
.end method

.method private speechCurrentTab()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->mAccessibilityEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    return-void
.end method
