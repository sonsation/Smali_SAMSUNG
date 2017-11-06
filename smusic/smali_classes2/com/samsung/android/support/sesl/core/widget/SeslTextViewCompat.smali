.class public final Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;
.super Ljava/lang/Object;
.source "SeslTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$Api23TextViewCompatImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$BaseTextViewCompatImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 56
    new-instance v1, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$Api23TextViewCompatImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$Api23TextViewCompatImpl;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatImpl;

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v1, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$BaseTextViewCompatImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$BaseTextViewCompatImpl;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 72
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$TextViewCompatImpl;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 73
    return-void
.end method
