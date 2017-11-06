.class public Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;
.super Ljava/lang/Object;
.source "SeslHapticFeedbackConstantsReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const-class v0, Landroid/view/HapticFeedbackConstants;

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;->mClass:Ljava/lang/Class;

    .line 53
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$Api24HapticFeedbackConstantsReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$BaseHapticFeedbackConstantsReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_VIBE_COMMON_A()I
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector$HapticFeedbackConstantsReflectorImpl;->getField_VIBE_COMMON_A()I

    move-result v0

    return v0
.end method
