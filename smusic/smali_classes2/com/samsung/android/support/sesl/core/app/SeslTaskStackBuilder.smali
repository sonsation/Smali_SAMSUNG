.class public final Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
.super Ljava/lang/Object;
.source "SeslTaskStackBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslTaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "a"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->create(Landroid/content/Context;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    .locals 1
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-object p0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    .locals 2
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 127
    .local v0, "target":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 130
    :cond_0
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;

    .line 133
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;

    .line 134
    return-object p0
.end method

.method public addParentStack(Landroid/app/Activity;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    .locals 3
    .param p1, "sourceActivity"    # Landroid/app/Activity;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "parent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 150
    :cond_0
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 154
    .local v1, "target":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 155
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 157
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;

    .line 158
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;

    .line 160
    .end local v1    # "target":Landroid/content/ComponentName;
    :cond_2
    return-object p0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    .locals 5
    .param p1, "sourceActivityName"    # Landroid/content/ComponentName;

    .prologue
    .line 183
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 185
    .local v1, "insertAt":I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/support/sesl/core/app/SeslNavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 186
    .local v2, "parent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    .line 187
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 188
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslNavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 190
    .end local v2    # "parent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SeslTaskStackBuilder"

    const-string v4, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 194
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "parent":Landroid/content/Intent;
    :cond_0
    return-object p0
.end method

.method public addParentStack(Ljava/lang/Class;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public editIntentAt(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getIntentCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 325
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/Intent;

    .line 326
    .local v1, "intents":[Landroid/content/Intent;
    array-length v2, v1

    if-nez v2, :cond_1

    .line 334
    :cond_0
    return-object v1

    .line 328
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v1, v4

    .line 331
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 332
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v3, v1, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No intents added to SeslTaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 310
    .local v0, "intents":[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    .line 314
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v1, p1, v0, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public startActivities()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No intents added to SeslTaskStackBuilder; cannot startActivities"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 269
    .local v0, "intents":[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    .line 272
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 273
    return-void
.end method
