.class public Lcom/wutka/dtd/DTDParseException;
.super Ljava/io/IOException;
.source "DTDParseException.java"


# instance fields
.field public column:I

.field public lineNumber:I

.field public uriID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 10
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    .line 12
    iput v1, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 17
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    .line 19
    iput v1, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "col"    # I

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "At line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    .line 26
    iput p3, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "col"    # I

    .prologue
    .line 31
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "URI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    .line 36
    :cond_0
    iput p3, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    .line 37
    iput p4, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    .line 38
    return-void

    .line 31
    :cond_1
    const-string v0, "At "

    goto :goto_0
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/wutka/dtd/DTDParseException;->column:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wutka/dtd/DTDParseException;->uriID:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/wutka/dtd/DTDParseException;->lineNumber:I

    return v0
.end method
