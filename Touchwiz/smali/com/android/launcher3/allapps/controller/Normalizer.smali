.class public abstract Lcom/android/launcher3/allapps/controller/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/android/launcher3/allapps/controller/Normalizer;, "Lcom/android/launcher3/allapps/controller/Normalizer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/Normalizer;->mCollator:Ljava/text/Collator;

    return-void
.end method

.method protected static integerCompare(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 63
    if-le p0, p1, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 65
    :cond_0
    if-ge p0, p1, :cond_1

    .line 66
    const/4 v0, -0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static longCompare(JJ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 72
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    .line 75
    const/4 v0, -0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getViewsForScreenWithPreNormalize(Ljava/util/ArrayList;III)Ljava/util/ArrayList;
    .locals 6
    .param p2, "maxItemsPerScreen"    # I
    .param p3, "cellCountX"    # I
    .param p4, "targetPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;III)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/android/launcher3/allapps/controller/Normalizer;, "Lcom/android/launcher3/allapps/controller/Normalizer<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;IILjava/util/ArrayList;I)I

    .line 59
    return-object v4
.end method

.method public normalize(Ljava/util/ArrayList;II)I
    .locals 6
    .param p2, "maxItemsPerScreen"    # I
    .param p3, "cellCountX"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;II)I"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/android/launcher3/allapps/controller/Normalizer;, "Lcom/android/launcher3/allapps/controller/Normalizer<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/Normalizer;->normalize(Ljava/util/ArrayList;IILjava/util/ArrayList;I)I

    move-result v0

    return v0
.end method

.method protected abstract normalize(Ljava/util/ArrayList;IILjava/util/ArrayList;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation
.end method
