.class public Lorg/brickred/socialauth/util/BirthDate;
.super Ljava/lang/Object;
.source "BirthDate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2fd044dfed619739L


# instance fields
.field private day:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/brickred/socialauth/util/BirthDate;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/brickred/socialauth/util/BirthDate;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/brickred/socialauth/util/BirthDate;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 58
    iput p1, p0, Lorg/brickred/socialauth/util/BirthDate;->day:I

    .line 59
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/brickred/socialauth/util/BirthDate;->month:I

    .line 78
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 96
    iput p1, p0, Lorg/brickred/socialauth/util/BirthDate;->year:I

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/brickred/socialauth/util/BirthDate;->month:I

    if-lez v1, :cond_2

    .line 106
    iget v1, p0, Lorg/brickred/socialauth/util/BirthDate;->month:I

    if-ge v1, v2, :cond_0

    .line 107
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :cond_0
    iget v1, p0, Lorg/brickred/socialauth/util/BirthDate;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 113
    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget v1, p0, Lorg/brickred/socialauth/util/BirthDate;->day:I

    if-lez v1, :cond_3

    .line 115
    iget v1, p0, Lorg/brickred/socialauth/util/BirthDate;->day:I

    if-ge v1, v2, :cond_1

    .line 116
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_1
    iget v1, p0, Lorg/brickred/socialauth/util/BirthDate;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 122
    :goto_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget v1, p0, Lorg/brickred/socialauth/util/BirthDate;->year:I

    if-lez v1, :cond_4

    .line 124
    iget v1, p0, Lorg/brickred/socialauth/util/BirthDate;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 111
    :cond_2
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 120
    :cond_3
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 126
    :cond_4
    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
