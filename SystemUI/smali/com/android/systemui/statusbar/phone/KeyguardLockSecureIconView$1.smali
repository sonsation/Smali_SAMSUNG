.class Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$1;
.super Ljava/lang/Object;
.source "KeyguardLockSecureIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->startShortcutHintAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    move-result-object v0

    .line 65
    const-wide/16 v4, 0x190

    .line 64
    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x96

    .line 65
    const/4 v6, 0x0

    .line 64
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    .line 63
    return-void
.end method
