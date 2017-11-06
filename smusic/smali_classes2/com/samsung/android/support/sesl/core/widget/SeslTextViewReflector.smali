.class public Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;
.super Ljava/lang/Object;
.source "SeslTextViewReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$TextViewReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;

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
    .line 15
    const-class v0, Landroid/widget/TextView;

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->mClass:Ljava/lang/Class;

    .line 69
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_mSingleLine(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;->getField_mSingleLine(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public static isTextSelectionProgressing()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;->isTextSelectionProgressing()Z

    move-result v0

    return v0
.end method

.method public static isTextViewHovered()Z
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;->isTextViewHovered()Z

    move-result v0

    return v0
.end method
