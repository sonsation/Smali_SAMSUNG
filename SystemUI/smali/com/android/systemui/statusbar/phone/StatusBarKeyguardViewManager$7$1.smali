.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

.field final synthetic val$finalDelay:J

.field final synthetic val$finalFadeoutDuration:J


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;
    .param p2, "val$finalDelay"    # J
    .param p4, "val$finalFadeoutDuration"    # J

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;->val$finalDelay:J

    iput-wide p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;->val$finalFadeoutDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 542
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;->val$finalDelay:J

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;->val$finalFadeoutDuration:J

    .line 543
    const/4 v6, 0x0

    .line 541
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;JJZ)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-set0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 540
    return-void
.end method
