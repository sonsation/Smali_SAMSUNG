.class public final Lcom/android/systemui/qs/QSTile$SignalState;
.super Lcom/android/systemui/qs/QSTile$BooleanState;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignalState"
.end annotation


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public connected:Z

.field public filter:Z

.field public isOverlayIconWide:Z

.field public overlayIconId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 892
    .local p0, "this":Lcom/android/systemui/qs/QSTile$SignalState;, "Lcom/android/systemui/qs/QSTile<TTState;>.SignalState;"
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$SignalState;, "Lcom/android/systemui/qs/QSTile<TTState;>.SignalState;"
    move-object v1, p1

    .line 902
    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    .line 903
    .local v1, "o":Lcom/android/systemui/qs/QSTile$SignalState;
    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 907
    .local v0, "changed":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    .line 908
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    .line 909
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    .line 910
    iget v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    iput v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    .line 911
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    .line 912
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 913
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v2

    if-nez v2, :cond_3

    .end local v0    # "changed":Z
    :goto_1
    return v0

    .line 904
    :cond_1
    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    if-ne v2, v3, :cond_0

    .line 905
    iget v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-ne v2, v3, :cond_0

    .line 906
    iget-boolean v2, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 913
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 918
    .local p0, "this":Lcom/android/systemui/qs/QSTile$SignalState;, "Lcom/android/systemui/qs/QSTile<TTState;>.SignalState;"
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile$BooleanState;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 919
    .local v0, "rt":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->connected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",activityIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",activityOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",overlayIconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ",wideOverlayIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    return-object v0
.end method
