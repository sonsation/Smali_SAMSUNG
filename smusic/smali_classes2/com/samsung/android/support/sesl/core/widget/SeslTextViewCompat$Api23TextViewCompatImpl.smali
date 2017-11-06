.class Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$Api23TextViewCompatImpl;
.super Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$BaseTextViewCompatImpl;
.source "SeslTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23TextViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompat$BaseTextViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setTextAppearance(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewCompatApi23;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 48
    return-void
.end method
