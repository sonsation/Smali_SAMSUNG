.class public Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;
.super Ljava/lang/Object;
.source "TrackViewInflater.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeVisible(Landroid/view/View;Ljava/util/EnumSet;Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p2, "type"    # Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;",
            ">;",
            "Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;>;"
    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static inflate(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/view/View;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;>;"
    const v8, 0x7f1203fd

    const v7, 0x7f1203fc

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 16
    const v2, 0x7f040152

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 17
    .local v1, "view":Landroid/view/View;
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-object v1

    .line 21
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflate : types - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->MORE_MENU:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    const v2, 0x7f1203f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 25
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 28
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->NUBMER:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    const v2, 0x7f1203fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 30
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 33
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->IMAGE:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    const v2, 0x7f1203f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 35
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 38
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_3
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->PLAY:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    const v2, 0x7f1203fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 40
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 43
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_4
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->EQUALIZER:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    const v2, 0x7f1203ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 45
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 48
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_5
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->DOWNLOAD:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 49
    const v2, 0x7f120400

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 50
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 53
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_6
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->CHECK_BOX:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 54
    const v2, 0x7f1203f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 55
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 58
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_7
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->REORDER:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 59
    const v2, 0x7f120401

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 60
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 63
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_8
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->INSIDE_HEADER:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 64
    const v2, 0x7f1203f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 65
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 68
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_9
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->SHORT_DIVIDER:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 69
    const v2, 0x7f120404

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const v2, 0x7f120405

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_a
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->REMOVE:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 74
    const v2, 0x7f120402

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 75
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 78
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_b
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;->MATCHED_TEXT:Lcom/samsung/android/app/music/milk/store/topchart/TrackViewType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 79
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 82
    :cond_c
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public static inflateHeader(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;>;"
    const v1, 0x7f040156

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "view":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;->inflateHeader(Landroid/view/View;Ljava/util/EnumSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static inflateHeader(Landroid/view/View;Ljava/util/EnumSet;)Landroid/view/View;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;>;"
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object p0

    .line 93
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflateHeader : types - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const v2, 0x7f1200b7

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "select":Landroid/view/View;
    const v2, 0x7f12040c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "play":Landroid/view/View;
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;->SELECT:Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;

    invoke-static {v1, p1, v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;->changeVisible(Landroid/view/View;Ljava/util/EnumSet;Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;)V

    .line 98
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;->PLAY:Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;

    invoke-static {v0, p1, v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewInflater;->changeVisible(Landroid/view/View;Ljava/util/EnumSet;Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;)V

    .line 99
    sget-object v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;->PLAY:Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderType;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    const v2, 0x7f12040a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
