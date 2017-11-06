.class Lcom/mapps/android/view/InterstitialView$13;
.super Ljava/lang/Object;
.source "InterstitialView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->sortByValue(Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$m:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$13;->val$m:Ljava/util/Map;

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 908
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView$13;->val$m:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 909
    .local v0, "v1":Ljava/lang/Object;
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView$13;->val$m:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 910
    .local v1, "v2":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 911
    if-nez v1, :cond_1

    .line 915
    .end local v0    # "v1":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 911
    .restart local v0    # "v1":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 912
    :cond_2
    instance-of v3, v0, Ljava/lang/Comparable;

    if-eqz v3, :cond_0

    .line 913
    check-cast v0, Ljava/lang/Comparable;

    .end local v0    # "v1":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method
