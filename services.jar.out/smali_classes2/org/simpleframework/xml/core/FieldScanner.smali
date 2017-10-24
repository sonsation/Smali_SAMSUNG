.class Lorg/simpleframework/xml/core/FieldScanner;
.super Lorg/simpleframework/xml/core/ContactList;
.source "FieldScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/FieldScanner$FieldKey;
    }
.end annotation


# instance fields
.field private final done:Lorg/simpleframework/xml/core/ContactMap;

.field private final factory:Lorg/simpleframework/xml/core/AnnotationFactory;

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ContactList;-><init>()V

    .line 77
    new-instance v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    .line 78
    new-instance v0, Lorg/simpleframework/xml/core/ContactMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ContactMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    .line 79
    iput-object p2, p0, Lorg/simpleframework/xml/core/FieldScanner;->support:Lorg/simpleframework/xml/core/Support;

    .line 80
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Lorg/simpleframework/xml/core/Detail;)V

    .line 81
    return-void
.end method

.method private build()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ContactMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    return-void

    .line 310
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Contact;

    .line 311
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/FieldScanner;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private extend(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Support;->getFields(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/FieldScanner;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private extract(Lorg/simpleframework/xml/core/Detail;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getFields()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    return-void

    .line 132
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/FieldDetail;

    .line 133
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/FieldDetail;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 134
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/FieldDetail;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 136
    array-length v5, v3

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v3, v0

    .line 137
    invoke-direct {p0, v4, v6, v3}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private extract(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/DefaultType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getFields()Ljava/util/List;

    move-result-object v0

    .line 154
    sget-object v1, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    if-eq p2, v1, :cond_1

    .line 165
    :cond_0
    return-void

    .line 155
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/FieldDetail;

    .line 156
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/FieldDetail;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 157
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/FieldDetail;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 160
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/FieldScanner;->isStatic(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/FieldScanner;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 161
    invoke-direct {p0, v0, v3, v2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)V

    goto :goto_0
.end method

.method private insert(Ljava/lang/Object;Lorg/simpleframework/xml/core/Contact;)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ContactMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Contact;

    .line 264
    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/ContactMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-void

    .line 265
    :cond_1
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/FieldScanner;->isText(Lorg/simpleframework/xml/core/Contact;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, v0

    .line 266
    goto :goto_0
.end method

.method private isStatic(Ljava/lang/reflect/Field;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 327
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    return v1

    .line 328
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isText(Lorg/simpleframework/xml/core/Contact;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 284
    instance-of v0, v0, Lorg/simpleframework/xml/Text;

    if-nez v0, :cond_0

    .line 287
    return v1

    .line 285
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isTransient(Ljava/lang/reflect/Field;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 346
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    return v1

    .line 347
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private process(Ljava/lang/reflect/Field;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getDependents(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lorg/simpleframework/xml/core/FieldScanner;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v1, p2, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 227
    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_0
.end method

.method private process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Lorg/simpleframework/xml/core/FieldContact;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldContact;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 244
    new-instance v1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;-><init>(Ljava/lang/reflect/Field;)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/FieldScanner;->insert(Ljava/lang/Object;Lorg/simpleframework/xml/core/Contact;)V

    .line 250
    return-void

    .line 247
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0
.end method

.method private remove(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    new-instance v1, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/core/FieldScanner$FieldKey;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/ContactMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method

.method private scan(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .prologue
    .line 178
    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-nez v0, :cond_1

    .line 184
    :goto_1
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-nez v0, :cond_2

    .line 187
    :goto_2
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-nez v0, :cond_3

    .line 190
    :goto_3
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-nez v0, :cond_4

    .line 193
    :goto_4
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-nez v0, :cond_5

    .line 196
    :goto_5
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-nez v0, :cond_6

    .line 199
    :goto_6
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-nez v0, :cond_7

    .line 202
    :goto_7
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    if-nez v0, :cond_8

    .line 205
    :goto_8
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-nez v0, :cond_9

    .line 208
    :goto_9
    instance-of v0, p2, Lorg/simpleframework/xml/Transient;

    if-nez v0, :cond_a

    .line 211
    :goto_a
    return-void

    .line 179
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_1

    .line 185
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_2

    .line 188
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    .line 191
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_4

    .line 194
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    .line 197
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_6

    .line 200
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_7

    .line 203
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_8

    .line 206
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_9

    .line 209
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->remove(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    goto :goto_a
.end method

.method private scan(Lorg/simpleframework/xml/core/Detail;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getOverride()Lorg/simpleframework/xml/DefaultType;

    move-result-object v0

    .line 93
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getAccess()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    .line 94
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getSuper()Ljava/lang/Class;

    move-result-object v2

    .line 96
    if-nez v2, :cond_0

    .line 99
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/FieldScanner;->extract(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/DefaultType;)V

    .line 100
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/FieldScanner;->extract(Lorg/simpleframework/xml/core/Detail;)V

    .line 101
    invoke-direct {p0}, Lorg/simpleframework/xml/core/FieldScanner;->build()V

    .line 102
    return-void

    .line 97
    :cond_0
    invoke-direct {p0, v2, v0}, Lorg/simpleframework/xml/core/FieldScanner;->extend(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    goto :goto_0
.end method
