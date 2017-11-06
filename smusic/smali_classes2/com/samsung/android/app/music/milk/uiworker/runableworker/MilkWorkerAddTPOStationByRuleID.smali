.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;
.super Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;
.source "MilkWorkerAddTPOStationByRuleID.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerAddTPOStationByRuleID"


# instance fields
.field private mBixbyTPOCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mBixbyTPORuleID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "workerCallback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "fragmngr"    # Landroid/app/FragmentManager;
    .param p5, "tpoRuleId"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPOCodeMap:Ljava/util/HashMap;

    .line 29
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPORuleID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private getBixbyTPOCde(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "ruleID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const-string v1, "Music_332"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "10101"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    const-string v1, "Music_333"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    const-string v1, "10103"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_2
    const-string v1, "Music_334"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    const-string v1, "10201"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_3
    const-string v1, "Music_335"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    const-string v1, "10202"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_4
    const-string v1, "Music_336"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    const-string v1, "10203"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v1, "10204"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_5
    const-string v1, "Music_337"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 177
    const-string v1, "20102"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v1, "30202"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_6
    const-string v1, "Music_338"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 180
    const-string v1, "30213"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_7
    const-string v1, "Music_339"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 182
    const-string v1, "30101"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v1, "20406"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_8
    const-string v1, "Music_340"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 185
    const-string v1, "30201"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_9
    const-string v1, "Music_341"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 187
    const-string v1, "30211"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 188
    :cond_a
    const-string v1, "Music_342"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 189
    const-string v1, "30209"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 190
    :cond_b
    const-string v1, "Music_343"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 191
    const-string v1, "30210"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 192
    :cond_c
    const-string v1, "Music_344"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 193
    const-string v1, "30205"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 194
    :cond_d
    const-string v1, "Music_345"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 195
    const-string v1, "30203"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 196
    :cond_e
    const-string v1, "Music_346"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 197
    const-string v1, "50111"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 198
    :cond_f
    const-string v1, "Music_347"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 199
    const-string v1, "50105"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 200
    :cond_10
    const-string v1, "Music_348"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 201
    const-string v1, "50106"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v1, "50109"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 203
    :cond_11
    const-string v1, "Music_349"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 204
    const-string v1, "50102"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 205
    :cond_12
    const-string v1, "Music_350"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 206
    const-string v1, "50110"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 207
    :cond_13
    const-string v1, "Music_351"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 208
    const-string v1, "50107"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v1, "50101"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 210
    :cond_14
    const-string v1, "Music_352"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 211
    const-string v1, "50108"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 212
    :cond_15
    const-string v1, "Music_353"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "50103"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getTpoCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 112
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPOCodeMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPOCodeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPORuleID:Ljava/lang/String;

    .line 113
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    :cond_0
    const-string v3, "00000"

    .line 127
    :goto_0
    return-object v3

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPOCodeMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPORuleID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 118
    .local v2, "tpoCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 119
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 120
    .local v1, "random":Ljava/util/Random;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 121
    .local v0, "index":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 122
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 127
    .end local v0    # "index":I
    .end local v1    # "random":Ljava/util/Random;
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method private makeBixbyTable()V
    .locals 5

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "target":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Music_332"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v2, "Music_333"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v2, "Music_334"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v2, "Music_335"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v2, "Music_336"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v2, "Music_337"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v2, "Music_338"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v2, "Music_339"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v2, "Music_340"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v2, "Music_341"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v2, "Music_342"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v2, "Music_343"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v2, "Music_344"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v2, "Music_345"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v2, "Music_346"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v2, "Music_347"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v2, "Music_348"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v2, "Music_349"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v2, "Music_350"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v2, "Music_351"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v2, "Music_352"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v2, "Music_353"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    .local v1, "targetRule":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPOCodeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPOCodeMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->getBixbyTPOCde(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    .end local v1    # "targetRule":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 50
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->showLoadingProgress(Z)V

    .line 52
    const/16 v0, 0xe5

    if-ne p2, v0, :cond_4

    .line 53
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onApiHandled] Receive Result "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez p3, :cond_2

    move-object v7, p4

    .line 55
    check-cast v7, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;

    .line 56
    .local v7, "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    if-eqz v7, :cond_1

    .line 57
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;->getStationList()Ljava/util/List;

    move-result-object v6

    .line 58
    .local v6, "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->getProperRecommendStationID(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "stationId":Ljava/lang/String;
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onApiHandled] Recommend Station ID is "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, v1

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 109
    .end local v2    # "stationId":Ljava/lang/String;
    .end local v6    # "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    .end local v7    # "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    :goto_0
    return-void

    .line 63
    .restart local v6    # "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    .restart local v7    # "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    :cond_0
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    const-string v1, "ServerErrorType"

    const-string v3, "Does not get Items"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v6    # "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    :cond_1
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    const-string v1, "ServerErrorType"

    const-string v3, "Does not get Items"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v7    # "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->makeBixbyTable()V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPOCodeMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPORuleID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->getTpoCode()Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "tpocode":Ljava/lang/String;
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onApiHandled] Rule ID("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPORuleID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") Tpo Code("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, v8}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getRecommendStationInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    .end local v8    # "tpocode":Ljava/lang/String;
    :cond_3
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    const-string v1, "ServerErrorType"

    const-string v3, "Server Error"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_4
    const/16 v0, 0xe4

    if-ne p2, v0, :cond_8

    .line 84
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onApiHandled] Receive Result "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-nez p3, :cond_7

    move-object v7, p4

    .line 86
    check-cast v7, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;

    .line 87
    .restart local v7    # "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    if-eqz v7, :cond_6

    .line 88
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;->getStationList()Ljava/util/List;

    move-result-object v6

    .line 89
    .restart local v6    # "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 90
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->getProperRecommendStationID(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .restart local v2    # "stationId":Ljava/lang/String;
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onApiHandled] 1 Recommend Station ID is "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, v1

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 94
    .end local v2    # "stationId":Ljava/lang/String;
    :cond_5
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    const-string v1, "ServerErrorType"

    const-string v3, "Does not get Items"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    .end local v6    # "recommendStationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    :cond_6
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    const-string v1, "ServerErrorType"

    const-string v3, "Does not get Items"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    .end local v7    # "station":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    :cond_7
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    const-string v1, "ServerErrorType"

    const-string v3, "Server Error"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_8
    const-string v0, "MilkWorkerAddTPOStationByRuleID"

    const-string v1, "ServerErrorType"

    const-string v3, "Server Error"

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPORuleID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    const-string v1, "MilkWorkerAddTPOStationByRuleID"

    const-string v2, "NOT_DEFINE"

    const-string v3, "Parameter Error"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;->mBixbyTPORuleID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getBixbyRuleStations(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0
.end method
