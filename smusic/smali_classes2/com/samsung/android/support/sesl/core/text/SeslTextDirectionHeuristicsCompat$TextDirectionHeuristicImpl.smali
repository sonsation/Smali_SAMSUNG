.class abstract Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "SeslTextDirectionHeuristicsCompat.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V
    .locals 0
    .param p1, "algorithm"    # Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    .line 115
    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 129
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-ge v0, p2, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    if-nez v0, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    move-result v0

    goto :goto_0
.end method

.method public isRtl([CII)Z
    .locals 1
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 124
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/support/sesl/core/text/SeslTextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
