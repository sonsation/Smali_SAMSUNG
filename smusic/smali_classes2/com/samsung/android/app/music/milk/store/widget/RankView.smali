.class public Lcom/samsung/android/app/music/milk/store/widget/RankView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "RankView.java"


# static fields
.field private static final NEW_VALUE:I = -0x3e8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public setRankChange(I)V
    .locals 6
    .param p1, "rankChange"    # I

    .prologue
    const/4 v5, 0x0

    .line 33
    const-string v3, ""

    .line 34
    .local v3, "text":Ljava/lang/String;
    const v0, 0x7f11016b

    .line 35
    .local v0, "color":I
    const v1, 0x7f020187

    .line 37
    .local v1, "drawable":I
    if-gez p1, :cond_3

    .line 38
    const v0, 0x7f11016d

    .line 39
    const v1, 0x7f020378

    .line 45
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 46
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    const/16 v4, -0x3e8

    if-gt p1, v4, :cond_1

    .line 48
    const-string v3, ""

    .line 49
    const v1, 0x7f020377

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setTextColor(I)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, "leftImage":Landroid/graphics/drawable/Drawable;
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 59
    :cond_2
    invoke-virtual {p0, v2, v5, v5, v5}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void

    .line 40
    .end local v2    # "leftImage":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-lez p1, :cond_0

    .line 41
    const v0, 0x7f11016c

    .line 42
    const v1, 0x7f020376

    goto :goto_0
.end method
