.class public Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat;
.super Ljava/lang/Object;
.source "SeslAccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;,
        Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;,
        Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 135
    packed-switch p0, :pswitch_data_0

    .line 149
    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "TYPE_APPLICATION"

    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "TYPE_INPUT_METHOD"

    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "TYPE_SYSTEM"

    goto :goto_0

    .line 146
    :pswitch_3
    const-string v0, "TYPE_ACCESSIBILITY_OVERLAY"

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAnchor(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    .line 131
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getAnchor(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/view/accessibility/AccessibilityWindowInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    .line 122
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getTitle(Landroid/view/accessibility/AccessibilityWindowInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
