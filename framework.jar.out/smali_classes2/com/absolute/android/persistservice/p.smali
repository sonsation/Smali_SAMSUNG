.class Lcom/absolute/android/persistservice/p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/l;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/l;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 812
    iput-object p1, p0, Lcom/absolute/android/persistservice/p;->a:Lcom/absolute/android/persistservice/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 814
    iput-object p2, p0, Lcom/absolute/android/persistservice/p;->b:Ljava/lang/String;

    .line 816
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    .line 817
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    if-nez p3, :cond_1

    .line 828
    :cond_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistservice/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 829
    return-void

    .line 819
    :cond_1
    array-length v2, p3

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p3, v0

    const-string/jumbo v4, "android.intent.action.PACKAGE_RESTARTED"

    .line 820
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 823
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 819
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    :cond_3
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/absolute/android/persistservice/p;->a:Lcom/absolute/android/persistservice/l;

    invoke-static {v0}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistservice/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 836
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/p;)V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/absolute/android/persistservice/p;->a()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 846
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 865
    :goto_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/p;->a:Lcom/absolute/android/persistservice/l;

    iget-object v2, p0, Lcom/absolute/android/persistservice/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    .line 866
    return-void

    .line 847
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/p;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 857
    goto :goto_0

    .line 851
    :cond_1
    return-void
.end method
