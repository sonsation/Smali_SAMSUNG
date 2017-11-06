.class Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$Api23CompoundButtonImpl;
.super Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$BaseCompoundButtonCompat;
.source "SeslCompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23CompoundButtonImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$BaseCompoundButtonCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 80
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompatApi23;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
