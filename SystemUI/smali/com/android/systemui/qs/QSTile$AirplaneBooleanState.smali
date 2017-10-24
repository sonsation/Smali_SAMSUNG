.class public Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;
.super Lcom/android/systemui/qs/QSTile$BooleanState;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirplaneBooleanState"
.end annotation


# instance fields
.field public isAirplaneMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 880
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;, "Lcom/android/systemui/qs/QSTile<TTState;>.AirplaneBooleanState;"
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;, "Lcom/android/systemui/qs/QSTile<TTState;>.AirplaneBooleanState;"
    move-object v1, p1

    .line 885
    check-cast v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    .line 886
    .local v1, "o":Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 887
    .local v0, "changed":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    .line 888
    return v0

    .line 886
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method
