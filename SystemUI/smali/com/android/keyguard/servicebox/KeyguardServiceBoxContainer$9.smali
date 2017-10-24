.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->showServiceBox(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

.field final synthetic val$page:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
    .param p2, "val$page"    # Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    iput-object p2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;->val$page:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;->val$page:Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 727
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 728
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "com.android.systemui:SERVICE_BOX"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 729
    const/4 v1, 0x1

    return v1
.end method
