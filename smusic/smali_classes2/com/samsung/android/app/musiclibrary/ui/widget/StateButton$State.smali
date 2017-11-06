.class public Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
.super Ljava/lang/Object;
.source "StateButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public final descriptionResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public final drawableResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final id:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field public final value:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "drawableResId"    # I
    .param p3, "descriptionResId"    # I
    .param p4, "value"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->id:I

    .line 53
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->drawableResId:I

    .line 54
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->descriptionResId:I

    .line 55
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->value:I

    .line 56
    return-void
.end method
