.class Lcom/android/systemui/statusbar/phone/NavigationBarController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarController;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenThemeChanged()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "NavigationBarController"

    const-string/jumbo v1, "onOpenThemeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->-get0(Lcom/android/systemui/statusbar/phone/NavigationBarController;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onOpenThemeChanged()V

    .line 57
    return-void
.end method
