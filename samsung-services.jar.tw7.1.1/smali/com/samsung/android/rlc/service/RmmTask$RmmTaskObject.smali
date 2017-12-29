.class Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;
.super Ljava/lang/Object;
.source "RmmTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/service/RmmTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RmmTaskObject"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;->intent:Landroid/content/Intent;

    .line 379
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method
