.class final Lcom/samsung/android/sdk/bixby/PathRuleInfoReader$1;
.super Ljava/lang/Object;
.source "PathRuleInfoReader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;->read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/sdk/bixby/data/State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/sdk/bixby/data/State;Lcom/samsung/android/sdk/bixby/data/State;)I
    .locals 2
    .param p1, "o1"    # Lcom/samsung/android/sdk/bixby/data/State;
    .param p2, "o2"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lcom/samsung/android/sdk/bixby/data/State;

    check-cast p2, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/PathRuleInfoReader$1;->compare(Lcom/samsung/android/sdk/bixby/data/State;Lcom/samsung/android/sdk/bixby/data/State;)I

    move-result v0

    return v0
.end method
