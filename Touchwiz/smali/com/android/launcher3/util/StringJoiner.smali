.class public Lcom/android/launcher3/util/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;

.field private final mDelimiter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/StringJoiner;->mBuilder:Ljava/lang/StringBuilder;

    .line 9
    iput-object p1, p0, Lcom/android/launcher3/util/StringJoiner;->mDelimiter:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public append(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 22
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/StringJoiner;->append(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/launcher3/util/StringJoiner;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/launcher3/util/StringJoiner;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :goto_0
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/StringJoiner;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/StringJoiner;->mDelimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/util/StringJoiner;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/launcher3/util/StringJoiner;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
