.class Lcom/android/settings/dashboard/DashboardAdapter$IndexAscCompare;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexAscCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settingslib/drawer/Tile;",
        ">;"
    }
.end annotation


# instance fields
.field private maps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/settingslib/drawer/Tile;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$IndexAscCompare;->maps:Ljava/util/HashMap;

    .line 867
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .locals 3
    .param p1, "arg0"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "arg1"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 875
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$IndexAscCompare;->maps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 876
    .local v0, "a":I
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter$IndexAscCompare;->maps:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 877
    .local v1, "b":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 873
    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter$IndexAscCompare;->compare(Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I

    move-result v0

    return v0
.end method
