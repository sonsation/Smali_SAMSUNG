.class public Lmf/org/apache/xml/resolver/apps/xread;
.super Ljava/lang/Object;
.source "xread.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/xread;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 90
    const/4 v5, 0x1

    .line 91
    const/4 v4, 0x1

    .line 92
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    .line 97
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_b

    .line 98
    aget-object v1, p0, v0

    const-string/jumbo v9, "-c"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    aget-object v1, p0, v0

    const-string/jumbo v9, "-w"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    aget-object v1, p0, v0

    const-string/jumbo v9, "-v"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    aget-object v1, p0, v0

    const-string/jumbo v9, "-s"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    aget-object v1, p0, v0

    const-string/jumbo v9, "-n"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    aget-object v1, p0, v0

    const-string/jumbo v9, "-N"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 129
    aget-object v1, p0, v0

    const-string/jumbo v9, "-d"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 144
    aget-object v1, p0, v0

    const-string/jumbo v9, "-E"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 158
    aget-object v1, p0, v0

    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v1

    move v1, v13

    .line 97
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 100
    aget-object v1, p0, v0

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 101
    goto :goto_1

    .line 105
    :cond_1
    const/4 v1, 0x0

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v13, v2

    move v2, v3

    move v3, v1

    move v1, v13

    .line 106
    goto :goto_1

    .line 110
    :cond_2
    const/4 v1, 0x1

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v13, v2

    move v2, v3

    move v3, v1

    move v1, v13

    .line 111
    goto :goto_1

    .line 115
    :cond_3
    const/4 v1, 0x1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v13, v2

    move v2, v1

    move v1, v13

    .line 116
    goto :goto_1

    .line 120
    :cond_4
    const/4 v1, 0x0

    move v5, v6

    move-object v6, v7

    move v13, v4

    move v4, v1

    move v1, v2

    move v2, v3

    move v3, v13

    .line 121
    goto :goto_1

    .line 125
    :cond_5
    const/4 v1, 0x1

    move v5, v6

    move-object v6, v7

    move v13, v4

    move v4, v1

    move v1, v2

    move v2, v3

    move v3, v13

    .line 126
    goto :goto_1

    .line 130
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 131
    aget-object v0, p0, v1

    .line 133
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    if-gez v0, :cond_7

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    goto :goto_1

    .line 135
    :cond_7
    sget-object v9, Lmf/org/apache/xml/resolver/apps/xread;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v9, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    .line 136
    if-gt v0, v2, :cond_8

    const/4 v0, 0x0

    :goto_2
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v13, v0

    move v0, v1

    move v1, v13

    .line 138
    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    .line 136
    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 141
    goto :goto_1

    .line 145
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 146
    aget-object v1, p0, v0

    .line 148
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 149
    if-gez v1, :cond_a

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    goto/16 :goto_1

    :cond_a
    move-object v6, v7

    move v13, v3

    move v3, v4

    move v4, v5

    move v5, v1

    move v1, v2

    move v2, v13

    .line 152
    goto/16 :goto_1

    :catch_1
    move-exception v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 155
    goto/16 :goto_1

    .line 161
    :cond_b
    if-eqz v7, :cond_c

    .line 166
    :goto_3
    new-instance v9, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;

    invoke-direct {v9}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;-><init>()V

    :try_start_2
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    .line 169
    invoke-virtual {v9, v0, v5}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    .line 170
    invoke-virtual {v9, v0, v4}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    if-nez v3, :cond_d

    .line 178
    :goto_4
    invoke-virtual {v9}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    .line 180
    :goto_5
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 181
    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    invoke-virtual {v3, v0}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    .line 180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 162
    :cond_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage: org.apache.xml.resolver.apps.xread [opts] xmlfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 163
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    :cond_d
    :try_start_3
    const-string/jumbo v0, "http://apache.org/xml/features/validation/schema"

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 174
    :catch_2
    move-exception v0

    goto :goto_4

    .line 185
    :cond_e
    new-instance v12, Lmf/org/apache/xml/resolver/apps/XParseError;

    .line 94
    const/4 v0, 0x1

    .line 185
    invoke-direct {v12, v0, v2}, Lmf/org/apache/xml/resolver/apps/XParseError;-><init>(ZZ)V

    .line 186
    invoke-virtual {v12, v6}, Lmf/org/apache/xml/resolver/apps/XParseError;->setMaxMessages(I)V

    .line 187
    invoke-virtual {v9, v12}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 189
    if-nez v4, :cond_f

    const-string/jumbo v0, "well-formed"

    .line 190
    :goto_6
    if-nez v5, :cond_10

    const-string/jumbo v1, "namespace-ignorant"

    .line 191
    :goto_7
    if-gtz v6, :cond_11

    .line 199
    :goto_8
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 202
    :try_start_4
    invoke-virtual {v9, v7}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->parse(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 209
    :goto_9
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 211
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v8, v2, v0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v10, 0x3e8

    .line 216
    cmp-long v7, v8, v10

    if-gtz v7, :cond_12

    const/4 v7, 0x1

    :goto_a
    if-nez v7, :cond_13

    const-wide/16 v4, 0x3e8

    .line 217
    div-long v4, v8, v4

    const-wide/16 v10, 0x3e8

    .line 218
    rem-long/2addr v8, v10

    move-wide v10, v8

    :goto_b
    const-wide/16 v8, 0x3c

    .line 221
    cmp-long v7, v4, v8

    if-gtz v7, :cond_14

    const/4 v7, 0x1

    :goto_c
    if-nez v7, :cond_15

    const-wide/16 v2, 0x3c

    .line 222
    div-long v2, v4, v2

    const-wide/16 v8, 0x3c

    .line 223
    rem-long/2addr v4, v8

    move-wide v8, v4

    :goto_d
    const-wide/16 v4, 0x3c

    .line 226
    cmp-long v4, v2, v4

    if-gtz v4, :cond_16

    const/4 v4, 0x1

    :goto_e
    if-nez v4, :cond_17

    const-wide/16 v0, 0x3c

    .line 227
    div-long v0, v2, v0

    const-wide/16 v4, 0x3c

    .line 228
    rem-long/2addr v2, v4

    move-wide v4, v2

    move-wide v2, v0

    .line 231
    :goto_f
    if-gtz v6, :cond_18

    .line 271
    :goto_10
    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v0

    if-gtz v0, :cond_24

    .line 274
    :goto_11
    return-void

    :cond_f
    const-string/jumbo v0, "validating"

    goto :goto_6

    :cond_10
    const-string/jumbo v1, "namespace-aware"

    goto :goto_7

    .line 192
    :cond_11
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Attempting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " parse"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 203
    :catch_3
    move-exception v1

    .line 204
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SAX Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_4
    move-exception v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 216
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_13
    move-wide v10, v8

    goto :goto_b

    .line 221
    :cond_14
    const/4 v7, 0x0

    goto :goto_c

    :cond_15
    move-wide v8, v4

    goto :goto_d

    .line 226
    :cond_16
    const/4 v4, 0x0

    goto :goto_e

    :cond_17
    move-wide v4, v2

    move-wide v2, v0

    goto :goto_f

    .line 232
    :cond_18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Parse "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/apps/XParseError;->getFatalCount()I

    move-result v0

    if-gtz v0, :cond_1c

    .line 236
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "succeeded "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 237
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 238
    cmp-long v0, v2, v0

    if-gtz v0, :cond_1d

    const/4 v0, 0x1

    :goto_12
    if-nez v0, :cond_19

    .line 239
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_19
    const-wide/16 v0, 0x0

    .line 241
    cmp-long v0, v2, v0

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    :goto_13
    if-nez v0, :cond_1a

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1f

    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_1b

    .line 242
    :cond_1a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 244
    :cond_1b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 245
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    :goto_15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "with "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v0

    .line 250
    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/apps/XParseError;->getWarningCount()I

    move-result v1

    .line 252
    if-gtz v0, :cond_20

    .line 257
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "no errors and "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 260
    :goto_16
    if-gtz v1, :cond_22

    .line 265
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "no warnings."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 268
    :goto_17
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 234
    :cond_1c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "failed "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_15

    .line 238
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_12

    .line 241
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_13

    :cond_1f
    const/4 v0, 0x0

    goto :goto_14

    .line 253
    :cond_20
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 254
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x1

    if-gt v0, v3, :cond_21

    const-string/jumbo v0, ""

    :goto_18
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 255
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, " and "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_16

    :cond_21
    const-string/jumbo v0, "s"

    goto :goto_18

    .line 261
    :cond_22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " warning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 262
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v0, 0x1

    if-gt v1, v0, :cond_23

    const-string/jumbo v0, ""

    :goto_19
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 263
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_17

    :cond_23
    const-string/jumbo v0, "s"

    goto :goto_19

    :cond_24
    const/4 v0, 0x1

    .line 272
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_11
.end method
