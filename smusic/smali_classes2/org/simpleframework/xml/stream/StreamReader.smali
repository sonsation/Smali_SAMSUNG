.class Lorg/simpleframework/xml/stream/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/StreamReader$1;,
        Lorg/simpleframework/xml/stream/StreamReader$End;,
        Lorg/simpleframework/xml/stream/StreamReader$Text;,
        Lorg/simpleframework/xml/stream/StreamReader$Start;,
        Lorg/simpleframework/xml/stream/StreamReader$Entry;
    }
.end annotation


# instance fields
.field private peek:Lorg/simpleframework/xml/stream/EventNode;

.field private reader:Ljavax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 0
    .param p1, "reader"    # Ljavax/xml/stream/XMLEventReader;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    .line 65
    return-void
.end method

.method private attribute(Ljavax/xml/stream/events/Attribute;)Lorg/simpleframework/xml/stream/StreamReader$Entry;
    .locals 1
    .param p1, "entry"    # Ljavax/xml/stream/events/Attribute;

    .prologue
    .line 182
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Entry;-><init>(Ljavax/xml/stream/events/Attribute;)V

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .locals 4
    .param p1, "event"    # Lorg/simpleframework/xml/stream/StreamReader$Start;

    .prologue
    .line 158
    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    .line 160
    .local v1, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/xml/stream/events/Attribute;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/events/Attribute;

    .line 162
    .local v2, "node":Ljavax/xml/stream/events/Attribute;
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/StreamReader;->attribute(Ljavax/xml/stream/events/Attribute;)Lorg/simpleframework/xml/stream/StreamReader$Entry;

    move-result-object v0

    .line 164
    .local v0, "entry":Lorg/simpleframework/xml/stream/StreamReader$Entry;
    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/StreamReader$Entry;->isReserved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    invoke-virtual {p1, v0}, Lorg/simpleframework/xml/stream/StreamReader$Start;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v0    # "entry":Lorg/simpleframework/xml/stream/StreamReader$Entry;
    .end local v2    # "node":Ljavax/xml/stream/events/Attribute;
    :cond_1
    return-object p1
.end method

.method private end()Lorg/simpleframework/xml/stream/StreamReader$End;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$End;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/StreamReader$End;-><init>(Lorg/simpleframework/xml/stream/StreamReader$1;)V

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
    .line 110
    iget-object v1, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 112
    .local v0, "event":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->start(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    .line 116
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->text(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Text;

    move-result-object v1

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->end()Lorg/simpleframework/xml/stream/StreamReader$End;

    move-result-object v1

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    goto :goto_0

    .line 124
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private start(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .locals 2
    .param p1, "event"    # Ljavax/xml/stream/events/XMLEvent;

    .prologue
    .line 138
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Start;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    .line 140
    .local v0, "node":Lorg/simpleframework/xml/stream/StreamReader$Start;
    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/StreamReader$Start;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object v0

    .line 143
    .end local v0    # "node":Lorg/simpleframework/xml/stream/StreamReader$Start;
    :cond_0
    return-object v0
.end method

.method private text(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Text;
    .locals 1
    .param p1, "event"    # Ljavax/xml/stream/events/XMLEvent;

    .prologue
    .line 196
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Text;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Text;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

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
    .line 91
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .line 93
    .local v0, "next":Lorg/simpleframework/xml/stream/EventNode;
    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

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
    .line 76
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/StreamReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0
.end method