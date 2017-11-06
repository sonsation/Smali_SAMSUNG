.class public Lorg/brickred/socialauth/util/DateComponents;
.super Ljava/lang/Object;
.source "DateComponents.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x30cd4f0e799f56aL


# instance fields
.field private day:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/brickred/socialauth/util/DateComponents;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/brickred/socialauth/util/DateComponents;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/brickred/socialauth/util/DateComponents;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/brickred/socialauth/util/DateComponents;->day:I

    .line 60
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 78
    iput p1, p0, Lorg/brickred/socialauth/util/DateComponents;->month:I

    .line 79
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/brickred/socialauth/util/DateComponents;->year:I

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/brickred/socialauth/util/DateComponents;->month:I

    if-lez v1, :cond_2

    .line 107
    iget v1, p0, Lorg/brickred/socialauth/util/DateComponents;->month:I

    if-ge v1, v2, :cond_0

    .line 108
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_0
    iget v1, p0, Lorg/brickred/socialauth/util/DateComponents;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget v1, p0, Lorg/brickred/socialauth/util/DateComponents;->day:I

    if-lez v1, :cond_3

    .line 116
    iget v1, p0, Lorg/brickred/socialauth/util/DateComponents;->day:I

    if-ge v1, v2, :cond_1

    .line 117
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :cond_1
    iget v1, p0, Lorg/brickred/socialauth/util/DateComponents;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 123
    :goto_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget v1, p0, Lorg/brickred/socialauth/util/DateComponents;->year:I

    if-lez v1, :cond_4

    .line 125
    iget v1, p0, Lorg/brickred/socialauth/util/DateComponents;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 129
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 112
    :cond_2
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 121
    :cond_3
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 127
    :cond_4
    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
