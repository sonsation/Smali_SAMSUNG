.class Lorg/simpleframework/xml/stream/PullReader;
.super Ljava/lang/Object;
.source "PullReader.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/PullReader$1;,
        Lorg/simpleframework/xml/stream/PullReader$End;,
        Lorg/simpleframework/xml/stream/PullReader$Entry;,
        Lorg/simpleframework/xml/stream/PullReader$Start;,
        Lorg/simpleframework/xml/stream/PullReader$Text;
    }
.end annotation


# instance fields
.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private peek:Lorg/simpleframework/xml/stream/EventNode;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 60
    return-void
.end method

.method private attribute(I)Lorg/simpleframework/xml/stream/PullReader$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$Entry;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1, p1}, Lorg/simpleframework/xml/stream/PullReader$Entry;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/stream/PullReader$Start;)Lorg/simpleframework/xml/stream/PullReader$Start;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 165
    :goto_0
    if-lt v0, v1, :cond_0

    .line 172
    return-object p1

    .line 166
    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/PullReader;->attribute(I)Lorg/simpleframework/xml/stream/PullReader$Entry;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/PullReader$Entry;->isReserved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p1, v2}, Lorg/simpleframework/xml/stream/PullReader$Start;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private end()Lorg/simpleframework/xml/stream/PullReader$End;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$End;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/PullReader$End;-><init>(Lorg/simpleframework/xml/stream/PullReader$1;)V

    return-object v0
.end method

.method private read()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    .line 107
    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 119
    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 108
    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    .line 111
    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    .line 114
    if-eq v0, v1, :cond_3

    .line 117
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    return-object v0

    .line 109
    :cond_1
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->start()Lorg/simpleframework/xml/stream/PullReader$Start;

    move-result-object v0

    return-object v0

    .line 112
    :cond_2
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->text()Lorg/simpleframework/xml/stream/PullReader$Text;

    move-result-object v0

    return-object v0

    .line 115
    :cond_3
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->end()Lorg/simpleframework/xml/stream/PullReader$End;

    move-result-object v0

    return-object v0
.end method

.method private start()Lorg/simpleframework/xml/stream/PullReader$Start;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$Start;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/PullReader$Start;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 145
    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/PullReader$Start;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    return-object v0

    .line 146
    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/PullReader;->build(Lorg/simpleframework/xml/stream/PullReader$Start;)Lorg/simpleframework/xml/stream/PullReader$Start;

    move-result-object v0

    return-object v0
.end method

.method private text()Lorg/simpleframework/xml/stream/PullReader$Text;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$Text;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/PullReader$Text;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public next()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .line 88
    if-eqz v0, :cond_0

    .line 91
    iput-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .line 93
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_0
.end method

.method public peek()Lorg/simpleframework/xml/stream/EventNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PullReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    goto :goto_0
.end method
