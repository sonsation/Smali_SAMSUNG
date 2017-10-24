.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$beforeFading:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "val$beforeFading"    # Ljava/lang/Runnable;

    .prologue
    .line 5885
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->val$beforeFading:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 5888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set11(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->val$beforeFading:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5890
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->val$beforeFading:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5892
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(Z)V

    .line 5893
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(ZZ)V

    .line 5909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5910
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap25(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 5915
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5916
    const-wide/16 v4, 0x78

    .line 5915
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->appTransitionStarting(JJ)V

    .line 5887
    return-void

    .line 5911
    :cond_2
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CINEMATIC_WALLPAPER:Z

    if-eqz v0, :cond_1

    .line 5912
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$62;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startUnlockAnimation()V

    goto :goto_0
.end method
