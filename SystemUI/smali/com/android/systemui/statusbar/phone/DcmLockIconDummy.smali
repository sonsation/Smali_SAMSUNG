.class public Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;
.super Lcom/android/systemui/statusbar/phone/LockIcon;
.source "DcmLockIconDummy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public isLockIconSelected(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .prologue
    .line 49
    return-void
.end method

.method public setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    .prologue
    .line 51
    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0
    .param p1, "deviceInteractive"    # Z

    .prologue
    .line 41
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 43
    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0
    .param p1, "transientFpError"    # Z

    .prologue
    .line 39
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public update(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 47
    return-void
.end method
