.class Lcom/samsung/android/app/music/common/activity/CertificationActivity$CertificationWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CertificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/CertificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertificationWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/CertificationActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/activity/CertificationActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity$CertificationWebViewClient;->this$0:Lcom/samsung/android/app/music/common/activity/CertificationActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/activity/CertificationActivity;Lcom/samsung/android/app/music/common/activity/CertificationActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/activity/CertificationActivity;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/activity/CertificationActivity$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/CertificationActivity$CertificationWebViewClient;-><init>(Lcom/samsung/android/app/music/common/activity/CertificationActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldOverrideUrlLoading : url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "NameCheckSuccess"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->access$202(Z)Z

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "N"

    invoke-static {}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->access$200()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity$CertificationWebViewClient;->this$0:Lcom/samsung/android/app/music/common/activity/CertificationActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->setResult(ILandroid/content/Intent;)V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/CertificationActivity$CertificationWebViewClient;->this$0:Lcom/samsung/android/app/music/common/activity/CertificationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/CertificationActivity;->finish()V

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
