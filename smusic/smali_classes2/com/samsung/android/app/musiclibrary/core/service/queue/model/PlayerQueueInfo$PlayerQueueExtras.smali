.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;
.super Ljava/lang/Object;
.source "PlayerQueueInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerQueueExtras"
.end annotation


# instance fields
.field private final extras:Landroid/os/Bundle;

.field private final modeExtras:Landroid/os/Bundle;

.field private final supportUnionMode:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4
    .param p1, "supportUnionMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->extras:Landroid/os/Bundle;

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    .line 135
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->supportUnionMode:Z

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.shuffle_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.repeat_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.sort_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method private pushChangedListMode(II)V
    .locals 2
    .param p1, "modeType"    # I
    .param p2, "unionMode"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.list_mode_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->supportUnionMode:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.union_shuffle_repeat_state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public pushDefaultInfo(III)V
    .locals 2
    .param p1, "uriType"    # I
    .param p2, "position"    # I
    .param p3, "listSize"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "extra.uri_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "extra.list_position"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "extra.list_length"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public pushIntExtras(Ljava/lang/String;I)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    return-void
.end method

.method public pushQueueChangedReason(I)V
    .locals 2
    .param p1, "queueChangedReason"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "extra.queue_changed_reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method public pushRepeatExtras(II)V
    .locals 2
    .param p1, "repeatMode"    # I
    .param p2, "unionMode"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.repeat_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->supportUnionMode:Z

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushChangedListMode(II)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushChangedListMode(II)V

    goto :goto_0
.end method

.method public pushShuffleExtras(Ljava/util/ArrayList;III)V
    .locals 4
    .param p2, "shufflePosition"    # I
    .param p3, "shuffleMode"    # I
    .param p4, "unionMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p1, "shuffleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v3, "extra.shuffle_state"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    if-ne p3, v0, :cond_0

    .line 168
    .local v0, "shuffleOn":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v3, "extra.shuffle_list"

    if-eqz v0, :cond_1

    .end local p1    # "shuffleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 170
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v3, "extra.shuffle_position"

    if-eqz v0, :cond_2

    .end local p2    # "shufflePosition":I
    :goto_2
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->supportUnionMode:Z

    if-eqz v1, :cond_3

    .line 177
    const/4 v1, 0x3

    invoke-direct {p0, v1, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushChangedListMode(II)V

    .line 181
    :goto_3
    return-void

    .end local v0    # "shuffleOn":Z
    .restart local p1    # "shuffleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p2    # "shufflePosition":I
    :cond_0
    move v0, v1

    .line 167
    goto :goto_0

    .line 168
    .restart local v0    # "shuffleOn":Z
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "shuffleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    move p2, v1

    .line 170
    goto :goto_2

    .line 179
    .end local p2    # "shufflePosition":I
    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->pushChangedListMode(II)V

    goto :goto_3
.end method

.method public pushSortExtras(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "sortMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "sortList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.list_mode_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.sort_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.sort_state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method public pushUnionExtras(I)V
    .locals 2
    .param p1, "unionMode"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.union_shuffle_repeat_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    return-void
.end method
