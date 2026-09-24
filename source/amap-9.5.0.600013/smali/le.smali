.class public abstract Lle;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lmg;Lax;IILme;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p4

    .line 1
    iget-object v10, v1, Lme;->a:Llg;

    .line 2
    iget-object v11, v1, Lme;->c:Llg;

    .line 3
    iget-object v12, v1, Lme;->b:Llg;

    .line 4
    iget-object v13, v1, Lme;->d:Llg;

    .line 5
    iget-object v2, v1, Lme;->e:Llg;

    .line 6
    iget v3, v1, Lme;->k:F

    .line 7
    iget-object v4, v0, Llg;->S:[Llg$b;

    aget-object v4, v4, p2

    sget-object v5, Llg$b;->b:Llg$b;

    const/4 v14, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-nez p2, :cond_3

    .line 8
    iget v7, v2, Llg;->r0:I

    if-nez v7, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-ne v7, v14, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-ne v7, v5, :cond_6

    goto :goto_5

    .line 9
    :cond_3
    iget v7, v2, Llg;->s0:I

    if-nez v7, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-ne v7, v14, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    if-ne v7, v5, :cond_6

    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    move/from16 v16, v15

    const/4 v7, 0x0

    move v15, v8

    move-object v8, v10

    :goto_7
    const/16 v20, 0x0

    if-nez v7, :cond_13

    .line 10
    iget-object v6, v8, Llg;->P:[Lfg;

    aget-object v6, v6, p3

    if-eqz v5, :cond_7

    const/16 v18, 0x1

    goto :goto_8

    :cond_7
    const/16 v18, 0x4

    .line 11
    :goto_8
    invoke-virtual {v6}, Lfg;->e()I

    move-result v22

    .line 12
    iget-object v14, v8, Llg;->S:[Llg$b;

    aget-object v14, v14, p2

    move/from16 v24, v3

    sget-object v3, Llg$b;->c:Llg$b;

    if-ne v14, v3, :cond_8

    iget-object v14, v8, Llg;->r:[I

    aget v14, v14, p2

    if-nez v14, :cond_8

    move/from16 v25, v7

    const/4 v14, 0x1

    goto :goto_9

    :cond_8
    move/from16 v25, v7

    const/4 v14, 0x0

    .line 13
    :goto_9
    iget-object v7, v6, Lfg;->f:Lfg;

    if-eqz v7, :cond_9

    if-eq v8, v10, :cond_9

    .line 14
    invoke-virtual {v7}, Lfg;->e()I

    move-result v7

    add-int v22, v22, v7

    :cond_9
    move/from16 v7, v22

    if-eqz v5, :cond_a

    if-eq v8, v10, :cond_a

    if-eq v8, v12, :cond_a

    move/from16 v22, v15

    const/16 v18, 0x8

    goto :goto_a

    :cond_a
    move/from16 v22, v15

    .line 15
    :goto_a
    iget-object v15, v6, Lfg;->f:Lfg;

    if-eqz v15, :cond_d

    if-ne v8, v12, :cond_b

    move-object/from16 v26, v2

    .line 16
    iget-object v2, v6, Lfg;->i:Lle0;

    iget-object v15, v15, Lfg;->i:Lle0;

    move-object/from16 v27, v10

    const/4 v10, 0x6

    invoke-virtual {v9, v2, v15, v7, v10}, Lax;->h(Lle0;Lle0;II)V

    goto :goto_b

    :cond_b
    move-object/from16 v26, v2

    move-object/from16 v27, v10

    .line 17
    iget-object v2, v6, Lfg;->i:Lle0;

    iget-object v10, v15, Lfg;->i:Lle0;

    const/16 v15, 0x8

    invoke-virtual {v9, v2, v10, v7, v15}, Lax;->h(Lle0;Lle0;II)V

    :goto_b
    if-eqz v14, :cond_c

    if-nez v5, :cond_c

    const/4 v2, 0x5

    goto :goto_c

    :cond_c
    move/from16 v2, v18

    .line 18
    :goto_c
    iget-object v10, v6, Lfg;->i:Lle0;

    iget-object v6, v6, Lfg;->f:Lfg;

    iget-object v6, v6, Lfg;->i:Lle0;

    invoke-virtual {v9, v10, v6, v7, v2}, Lax;->e(Lle0;Lle0;II)Lb6;

    goto :goto_d

    :cond_d
    move-object/from16 v26, v2

    move-object/from16 v27, v10

    :goto_d
    if-eqz v4, :cond_f

    .line 19
    invoke-virtual {v8}, Llg;->Q()I

    move-result v2

    const/16 v6, 0x8

    if-eq v2, v6, :cond_e

    iget-object v2, v8, Llg;->S:[Llg$b;

    aget-object v2, v2, p2

    if-ne v2, v3, :cond_e

    .line 20
    iget-object v2, v8, Llg;->P:[Lfg;

    add-int/lit8 v3, p3, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Lfg;->i:Lle0;

    aget-object v2, v2, p3

    iget-object v2, v2, Lfg;->i:Lle0;

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v9, v3, v2, v7, v6}, Lax;->h(Lle0;Lle0;II)V

    goto :goto_e

    :cond_e
    const/4 v7, 0x0

    .line 21
    :goto_e
    iget-object v2, v8, Llg;->P:[Lfg;

    aget-object v2, v2, p3

    iget-object v2, v2, Lfg;->i:Lle0;

    iget-object v3, v0, Llg;->P:[Lfg;

    aget-object v3, v3, p3

    iget-object v3, v3, Lfg;->i:Lle0;

    const/16 v6, 0x8

    invoke-virtual {v9, v2, v3, v7, v6}, Lax;->h(Lle0;Lle0;II)V

    .line 22
    :cond_f
    iget-object v2, v8, Llg;->P:[Lfg;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lfg;->f:Lfg;

    if-eqz v2, :cond_11

    .line 23
    iget-object v2, v2, Lfg;->d:Llg;

    .line 24
    iget-object v3, v2, Llg;->P:[Lfg;

    aget-object v3, v3, p3

    iget-object v3, v3, Lfg;->f:Lfg;

    if-eqz v3, :cond_11

    iget-object v3, v3, Lfg;->d:Llg;

    if-eq v3, v8, :cond_10

    goto :goto_f

    :cond_10
    move-object/from16 v20, v2

    :cond_11
    :goto_f
    if-eqz v20, :cond_12

    move-object/from16 v8, v20

    move/from16 v7, v25

    goto :goto_10

    :cond_12
    const/4 v7, 0x1

    :goto_10
    move/from16 v15, v22

    move/from16 v3, v24

    move-object/from16 v2, v26

    move-object/from16 v10, v27

    goto/16 :goto_7

    :cond_13
    move-object/from16 v26, v2

    move/from16 v24, v3

    move-object/from16 v27, v10

    move/from16 v22, v15

    if-eqz v13, :cond_17

    .line 25
    iget-object v2, v11, Llg;->P:[Lfg;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lfg;->f:Lfg;

    if-eqz v2, :cond_17

    .line 26
    iget-object v2, v13, Llg;->P:[Lfg;

    aget-object v2, v2, v3

    .line 27
    iget-object v6, v13, Llg;->S:[Llg$b;

    aget-object v6, v6, p2

    sget-object v7, Llg$b;->c:Llg$b;

    if-ne v6, v7, :cond_14

    iget-object v6, v13, Llg;->r:[I

    aget v6, v6, p2

    if-nez v6, :cond_14

    const/4 v6, 0x1

    goto :goto_11

    :cond_14
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_15

    if-nez v5, :cond_15

    .line 28
    iget-object v6, v2, Lfg;->f:Lfg;

    iget-object v7, v6, Lfg;->d:Llg;

    if-ne v7, v0, :cond_15

    .line 29
    iget-object v7, v2, Lfg;->i:Lle0;

    iget-object v6, v6, Lfg;->i:Lle0;

    invoke-virtual {v2}, Lfg;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v10, 0x5

    invoke-virtual {v9, v7, v6, v8, v10}, Lax;->e(Lle0;Lle0;II)Lb6;

    goto :goto_12

    :cond_15
    const/4 v10, 0x5

    if-eqz v5, :cond_16

    .line 30
    iget-object v6, v2, Lfg;->f:Lfg;

    iget-object v7, v6, Lfg;->d:Llg;

    if-ne v7, v0, :cond_16

    .line 31
    iget-object v7, v2, Lfg;->i:Lle0;

    iget-object v6, v6, Lfg;->i:Lle0;

    invoke-virtual {v2}, Lfg;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v14, 0x4

    invoke-virtual {v9, v7, v6, v8, v14}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 32
    :cond_16
    :goto_12
    iget-object v6, v2, Lfg;->i:Lle0;

    iget-object v7, v11, Llg;->P:[Lfg;

    aget-object v3, v7, v3

    iget-object v3, v3, Lfg;->f:Lfg;

    iget-object v3, v3, Lfg;->i:Lle0;

    .line 33
    invoke-virtual {v2}, Lfg;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v7, 0x6

    .line 34
    invoke-virtual {v9, v6, v3, v2, v7}, Lax;->j(Lle0;Lle0;II)V

    goto :goto_13

    :cond_17
    const/4 v10, 0x5

    :goto_13
    if-eqz v4, :cond_18

    .line 35
    iget-object v0, v0, Llg;->P:[Lfg;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Lfg;->i:Lle0;

    iget-object v3, v11, Llg;->P:[Lfg;

    aget-object v2, v3, v2

    iget-object v3, v2, Lfg;->i:Lle0;

    .line 36
    invoke-virtual {v2}, Lfg;->e()I

    move-result v2

    const/16 v4, 0x8

    .line 37
    invoke-virtual {v9, v0, v3, v2, v4}, Lax;->h(Lle0;Lle0;II)V

    .line 38
    :cond_18
    iget-object v0, v1, Lme;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1e

    .line 40
    iget-boolean v3, v1, Lme;->r:Z

    if-eqz v3, :cond_19

    iget-boolean v3, v1, Lme;->t:Z

    if-nez v3, :cond_19

    .line 41
    iget v3, v1, Lme;->j:I

    int-to-float v3, v3

    goto :goto_14

    :cond_19
    move/from16 v3, v24

    :goto_14
    const/4 v4, 0x0

    move-object/from16 v6, v20

    const/4 v7, 0x0

    const/16 v29, 0x0

    :goto_15
    if-ge v7, v2, :cond_1e

    .line 42
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llg;

    .line 43
    iget-object v14, v8, Llg;->v0:[F

    aget v14, v14, p2

    cmpg-float v15, v14, v4

    if-gez v15, :cond_1b

    .line 44
    iget-boolean v14, v1, Lme;->t:Z

    if-eqz v14, :cond_1a

    .line 45
    iget-object v8, v8, Llg;->P:[Lfg;

    add-int/lit8 v14, p3, 0x1

    aget-object v14, v8, v14

    iget-object v14, v14, Lfg;->i:Lle0;

    aget-object v8, v8, p3

    iget-object v8, v8, Lfg;->i:Lle0;

    const/4 v10, 0x0

    const/4 v15, 0x4

    invoke-virtual {v9, v14, v8, v10, v15}, Lax;->e(Lle0;Lle0;II)Lb6;

    const/4 v4, 0x0

    goto :goto_17

    :cond_1a
    const/4 v15, 0x4

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_1b
    const/4 v15, 0x4

    :goto_16
    cmpl-float v10, v14, v4

    if-nez v10, :cond_1c

    .line 46
    iget-object v8, v8, Llg;->P:[Lfg;

    add-int/lit8 v10, p3, 0x1

    aget-object v10, v8, v10

    iget-object v10, v10, Lfg;->i:Lle0;

    aget-object v8, v8, p3

    iget-object v8, v8, Lfg;->i:Lle0;

    const/4 v4, 0x0

    const/16 v14, 0x8

    invoke-virtual {v9, v10, v8, v4, v14}, Lax;->e(Lle0;Lle0;II)Lb6;

    :goto_17
    move-object/from16 v17, v0

    goto :goto_19

    :cond_1c
    const/4 v4, 0x0

    if-eqz v6, :cond_1d

    .line 47
    iget-object v6, v6, Llg;->P:[Lfg;

    aget-object v10, v6, p3

    iget-object v10, v10, Lfg;->i:Lle0;

    add-int/lit8 v17, p3, 0x1

    .line 48
    aget-object v6, v6, v17

    iget-object v6, v6, Lfg;->i:Lle0;

    .line 49
    iget-object v4, v8, Llg;->P:[Lfg;

    aget-object v15, v4, p3

    iget-object v15, v15, Lfg;->i:Lle0;

    .line 50
    aget-object v4, v4, v17

    iget-object v4, v4, Lfg;->i:Lle0;

    move-object/from16 v17, v0

    .line 51
    invoke-virtual/range {p1 .. p1}, Lax;->r()Lb6;

    move-result-object v0

    move-object/from16 v28, v0

    move/from16 v30, v3

    move/from16 v31, v14

    move-object/from16 v32, v10

    move-object/from16 v33, v6

    move-object/from16 v34, v15

    move-object/from16 v35, v4

    .line 52
    invoke-virtual/range {v28 .. v35}, Lb6;->l(FFFLle0;Lle0;Lle0;Lle0;)Lb6;

    .line 53
    invoke-virtual {v9, v0}, Lax;->d(Lb6;)V

    goto :goto_18

    :cond_1d
    move-object/from16 v17, v0

    :goto_18
    move-object v6, v8

    move/from16 v29, v14

    :goto_19
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    const/4 v4, 0x0

    const/4 v10, 0x5

    goto/16 :goto_15

    :cond_1e
    if-eqz v12, :cond_23

    if-eq v12, v13, :cond_1f

    if-eqz v5, :cond_23

    :cond_1f
    move-object/from16 v10, v27

    .line 54
    iget-object v0, v10, Llg;->P:[Lfg;

    aget-object v0, v0, p3

    .line 55
    iget-object v1, v11, Llg;->P:[Lfg;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 56
    iget-object v0, v0, Lfg;->f:Lfg;

    if-eqz v0, :cond_20

    iget-object v0, v0, Lfg;->i:Lle0;

    move-object v3, v0

    goto :goto_1a

    :cond_20
    move-object/from16 v3, v20

    .line 57
    :goto_1a
    iget-object v0, v1, Lfg;->f:Lfg;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lfg;->i:Lle0;

    move-object v5, v0

    goto :goto_1b

    :cond_21
    move-object/from16 v5, v20

    .line 58
    :goto_1b
    iget-object v0, v12, Llg;->P:[Lfg;

    aget-object v0, v0, p3

    .line 59
    iget-object v1, v13, Llg;->P:[Lfg;

    aget-object v1, v1, v2

    if-eqz v3, :cond_46

    if-eqz v5, :cond_46

    if-nez p2, :cond_22

    move-object/from16 v2, v26

    .line 60
    iget v2, v2, Llg;->h0:F

    goto :goto_1c

    :cond_22
    move-object/from16 v2, v26

    .line 61
    iget v2, v2, Llg;->i0:F

    :goto_1c
    move v4, v2

    .line 62
    invoke-virtual {v0}, Lfg;->e()I

    move-result v6

    .line 63
    invoke-virtual {v1}, Lfg;->e()I

    move-result v7

    .line 64
    iget-object v2, v0, Lfg;->i:Lle0;

    iget-object v8, v1, Lfg;->i:Lle0;

    const/4 v10, 0x7

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lax;->c(Lle0;Lle0;IFLle0;Lle0;II)V

    goto/16 :goto_33

    :cond_23
    move-object/from16 v10, v27

    if-eqz v22, :cond_35

    if-eqz v12, :cond_35

    .line 65
    iget v0, v1, Lme;->j:I

    if-lez v0, :cond_24

    iget v1, v1, Lme;->i:I

    if-ne v1, v0, :cond_24

    const/16 v18, 0x1

    goto :goto_1d

    :cond_24
    const/16 v18, 0x0

    :goto_1d
    move-object v14, v12

    move-object v15, v14

    :goto_1e
    if-eqz v14, :cond_46

    .line 66
    iget-object v0, v14, Llg;->x0:[Llg;

    aget-object v0, v0, p2

    move-object v8, v0

    :goto_1f
    if-eqz v8, :cond_25

    .line 67
    invoke-virtual {v8}, Llg;->Q()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_26

    .line 68
    iget-object v0, v8, Llg;->x0:[Llg;

    aget-object v8, v0, p2

    goto :goto_1f

    :cond_25
    const/16 v6, 0x8

    :cond_26
    if-nez v8, :cond_28

    if-ne v14, v13, :cond_27

    goto :goto_20

    :cond_27
    move-object/from16 v17, v8

    goto/16 :goto_27

    .line 69
    :cond_28
    :goto_20
    iget-object v0, v14, Llg;->P:[Lfg;

    aget-object v0, v0, p3

    .line 70
    iget-object v1, v0, Lfg;->i:Lle0;

    .line 71
    iget-object v2, v0, Lfg;->f:Lfg;

    if-eqz v2, :cond_29

    iget-object v2, v2, Lfg;->i:Lle0;

    goto :goto_21

    :cond_29
    move-object/from16 v2, v20

    :goto_21
    if-eq v15, v14, :cond_2a

    .line 72
    iget-object v2, v15, Llg;->P:[Lfg;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lfg;->i:Lle0;

    goto :goto_22

    :cond_2a
    if-ne v14, v12, :cond_2c

    if-ne v15, v14, :cond_2c

    .line 73
    iget-object v2, v10, Llg;->P:[Lfg;

    aget-object v2, v2, p3

    iget-object v2, v2, Lfg;->f:Lfg;

    if-eqz v2, :cond_2b

    iget-object v2, v2, Lfg;->i:Lle0;

    goto :goto_22

    :cond_2b
    move-object/from16 v2, v20

    .line 74
    :cond_2c
    :goto_22
    invoke-virtual {v0}, Lfg;->e()I

    move-result v0

    .line 75
    iget-object v3, v14, Llg;->P:[Lfg;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lfg;->e()I

    move-result v3

    if-eqz v8, :cond_2d

    .line 76
    iget-object v5, v8, Llg;->P:[Lfg;

    aget-object v5, v5, p3

    .line 77
    iget-object v7, v5, Lfg;->i:Lle0;

    .line 78
    iget-object v6, v14, Llg;->P:[Lfg;

    aget-object v6, v6, v4

    iget-object v6, v6, Lfg;->i:Lle0;

    move-object/from16 v36, v7

    move-object v7, v6

    move-object/from16 v6, v36

    goto :goto_24

    .line 79
    :cond_2d
    iget-object v5, v11, Llg;->P:[Lfg;

    aget-object v5, v5, v4

    iget-object v5, v5, Lfg;->f:Lfg;

    if-eqz v5, :cond_2e

    .line 80
    iget-object v6, v5, Lfg;->i:Lle0;

    goto :goto_23

    :cond_2e
    move-object/from16 v6, v20

    .line 81
    :goto_23
    iget-object v7, v14, Llg;->P:[Lfg;

    aget-object v7, v7, v4

    iget-object v7, v7, Lfg;->i:Lle0;

    :goto_24
    if-eqz v5, :cond_2f

    .line 82
    invoke-virtual {v5}, Lfg;->e()I

    move-result v5

    add-int/2addr v3, v5

    :cond_2f
    if-eqz v15, :cond_30

    .line 83
    iget-object v5, v15, Llg;->P:[Lfg;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lfg;->e()I

    move-result v5

    add-int/2addr v0, v5

    :cond_30
    if-eqz v1, :cond_27

    if-eqz v2, :cond_27

    if-eqz v6, :cond_27

    if-eqz v7, :cond_27

    if-ne v14, v12, :cond_31

    .line 84
    iget-object v0, v12, Llg;->P:[Lfg;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lfg;->e()I

    move-result v0

    :cond_31
    move v5, v0

    if-ne v14, v13, :cond_32

    .line 85
    iget-object v0, v13, Llg;->P:[Lfg;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lfg;->e()I

    move-result v0

    move/from16 v17, v0

    goto :goto_25

    :cond_32
    move/from16 v17, v3

    :goto_25
    if-eqz v18, :cond_33

    const/16 v23, 0x8

    goto :goto_26

    :cond_33
    const/16 v23, 0x5

    :goto_26
    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    move/from16 v8, v23

    .line 86
    invoke-virtual/range {v0 .. v8}, Lax;->c(Lle0;Lle0;IFLle0;Lle0;II)V

    .line 87
    :goto_27
    invoke-virtual {v14}, Llg;->Q()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_34

    move-object v15, v14

    :cond_34
    move-object/from16 v14, v17

    goto/16 :goto_1e

    :cond_35
    const/16 v8, 0x8

    if-eqz v16, :cond_46

    if-eqz v12, :cond_46

    .line 88
    iget v0, v1, Lme;->j:I

    if-lez v0, :cond_36

    iget v1, v1, Lme;->i:I

    if-ne v1, v0, :cond_36

    const/16 v18, 0x1

    goto :goto_28

    :cond_36
    const/16 v18, 0x0

    :goto_28
    move-object v14, v12

    move-object v15, v14

    :goto_29
    if-eqz v14, :cond_42

    .line 89
    iget-object v0, v14, Llg;->x0:[Llg;

    aget-object v0, v0, p2

    :goto_2a
    if-eqz v0, :cond_37

    .line 90
    invoke-virtual {v0}, Llg;->Q()I

    move-result v1

    if-ne v1, v8, :cond_37

    .line 91
    iget-object v0, v0, Llg;->x0:[Llg;

    aget-object v0, v0, p2

    goto :goto_2a

    :cond_37
    if-eq v14, v12, :cond_40

    if-eq v14, v13, :cond_40

    if-eqz v0, :cond_40

    if-ne v0, v13, :cond_38

    move-object/from16 v7, v20

    goto :goto_2b

    :cond_38
    move-object v7, v0

    .line 92
    :goto_2b
    iget-object v0, v14, Llg;->P:[Lfg;

    aget-object v0, v0, p3

    .line 93
    iget-object v1, v0, Lfg;->i:Lle0;

    .line 94
    iget-object v2, v0, Lfg;->f:Lfg;

    if-eqz v2, :cond_39

    iget-object v2, v2, Lfg;->i:Lle0;

    .line 95
    :cond_39
    iget-object v2, v15, Llg;->P:[Lfg;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lfg;->i:Lle0;

    .line 96
    invoke-virtual {v0}, Lfg;->e()I

    move-result v0

    .line 97
    iget-object v4, v14, Llg;->P:[Lfg;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lfg;->e()I

    move-result v4

    if-eqz v7, :cond_3b

    .line 98
    iget-object v5, v7, Llg;->P:[Lfg;

    aget-object v5, v5, p3

    .line 99
    iget-object v6, v5, Lfg;->i:Lle0;

    .line 100
    iget-object v8, v5, Lfg;->f:Lfg;

    if-eqz v8, :cond_3a

    iget-object v8, v8, Lfg;->i:Lle0;

    goto :goto_2d

    :cond_3a
    move-object/from16 v8, v20

    goto :goto_2d

    .line 101
    :cond_3b
    iget-object v5, v13, Llg;->P:[Lfg;

    aget-object v5, v5, p3

    if-eqz v5, :cond_3c

    .line 102
    iget-object v6, v5, Lfg;->i:Lle0;

    goto :goto_2c

    :cond_3c
    move-object/from16 v6, v20

    .line 103
    :goto_2c
    iget-object v8, v14, Llg;->P:[Lfg;

    aget-object v8, v8, v3

    iget-object v8, v8, Lfg;->i:Lle0;

    :goto_2d
    if-eqz v5, :cond_3d

    .line 104
    invoke-virtual {v5}, Lfg;->e()I

    move-result v5

    add-int/2addr v4, v5

    :cond_3d
    move/from16 v17, v4

    .line 105
    iget-object v4, v15, Llg;->P:[Lfg;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lfg;->e()I

    move-result v3

    add-int/2addr v3, v0

    if-eqz v18, :cond_3e

    const/16 v19, 0x8

    goto :goto_2e

    :cond_3e
    const/16 v19, 0x4

    :goto_2e
    if-eqz v1, :cond_3f

    if-eqz v2, :cond_3f

    if-eqz v6, :cond_3f

    if-eqz v8, :cond_3f

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move-object v5, v6

    const/16 v21, 0x4

    move-object v6, v8

    move-object/from16 v23, v7

    move/from16 v7, v17

    move-object/from16 v17, v15

    const/16 v15, 0x8

    move/from16 v8, v19

    .line 106
    invoke-virtual/range {v0 .. v8}, Lax;->c(Lle0;Lle0;IFLle0;Lle0;II)V

    goto :goto_2f

    :cond_3f
    move-object/from16 v23, v7

    move-object/from16 v17, v15

    const/16 v15, 0x8

    const/16 v21, 0x4

    :goto_2f
    move-object/from16 v0, v23

    goto :goto_30

    :cond_40
    move-object/from16 v17, v15

    const/16 v15, 0x8

    const/16 v21, 0x4

    .line 107
    :goto_30
    invoke-virtual {v14}, Llg;->Q()I

    move-result v1

    if-eq v1, v15, :cond_41

    goto :goto_31

    :cond_41
    move-object/from16 v14, v17

    :goto_31
    move-object v15, v14

    const/16 v8, 0x8

    move-object v14, v0

    goto/16 :goto_29

    .line 108
    :cond_42
    iget-object v0, v12, Llg;->P:[Lfg;

    aget-object v0, v0, p3

    .line 109
    iget-object v1, v10, Llg;->P:[Lfg;

    aget-object v1, v1, p3

    iget-object v1, v1, Lfg;->f:Lfg;

    .line 110
    iget-object v2, v13, Llg;->P:[Lfg;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    .line 111
    iget-object v2, v11, Llg;->P:[Lfg;

    aget-object v2, v2, v3

    iget-object v14, v2, Lfg;->f:Lfg;

    if-eqz v1, :cond_44

    if-eq v12, v13, :cond_43

    .line 112
    iget-object v2, v0, Lfg;->i:Lle0;

    iget-object v1, v1, Lfg;->i:Lle0;

    invoke-virtual {v0}, Lfg;->e()I

    move-result v0

    const/4 v15, 0x5

    invoke-virtual {v9, v2, v1, v0, v15}, Lax;->e(Lle0;Lle0;II)Lb6;

    goto :goto_32

    :cond_43
    const/4 v15, 0x5

    if-eqz v14, :cond_45

    .line 113
    iget-object v2, v0, Lfg;->i:Lle0;

    iget-object v3, v1, Lfg;->i:Lle0;

    invoke-virtual {v0}, Lfg;->e()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Lfg;->i:Lle0;

    iget-object v7, v14, Lfg;->i:Lle0;

    .line 114
    invoke-virtual {v10}, Lfg;->e()I

    move-result v8

    const/16 v17, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v17

    .line 115
    invoke-virtual/range {v0 .. v8}, Lax;->c(Lle0;Lle0;IFLle0;Lle0;II)V

    goto :goto_32

    :cond_44
    const/4 v15, 0x5

    :cond_45
    :goto_32
    if-eqz v14, :cond_46

    if-eq v12, v13, :cond_46

    .line 116
    iget-object v0, v10, Lfg;->i:Lle0;

    iget-object v1, v14, Lfg;->i:Lle0;

    invoke-virtual {v10}, Lfg;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v9, v0, v1, v2, v15}, Lax;->e(Lle0;Lle0;II)Lb6;

    :cond_46
    :goto_33
    if-nez v22, :cond_47

    if-eqz v16, :cond_4d

    :cond_47
    if-eqz v12, :cond_4d

    if-eq v12, v13, :cond_4d

    .line 117
    iget-object v0, v12, Llg;->P:[Lfg;

    aget-object v1, v0, p3

    .line 118
    iget-object v2, v13, Llg;->P:[Lfg;

    const/4 v3, 0x1

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 119
    iget-object v4, v1, Lfg;->f:Lfg;

    if-eqz v4, :cond_48

    iget-object v4, v4, Lfg;->i:Lle0;

    goto :goto_34

    :cond_48
    move-object/from16 v4, v20

    .line 120
    :goto_34
    iget-object v5, v2, Lfg;->f:Lfg;

    if-eqz v5, :cond_49

    iget-object v5, v5, Lfg;->i:Lle0;

    goto :goto_35

    :cond_49
    move-object/from16 v5, v20

    :goto_35
    if-eq v11, v13, :cond_4b

    .line 121
    iget-object v5, v11, Llg;->P:[Lfg;

    aget-object v5, v5, v3

    .line 122
    iget-object v5, v5, Lfg;->f:Lfg;

    if-eqz v5, :cond_4a

    iget-object v5, v5, Lfg;->i:Lle0;

    move-object/from16 v20, v5

    :cond_4a
    move-object/from16 v5, v20

    :cond_4b
    if-ne v12, v13, :cond_4c

    .line 123
    aget-object v2, v0, v3

    :cond_4c
    if-eqz v4, :cond_4d

    if-eqz v5, :cond_4d

    const/high16 v6, 0x3f000000    # 0.5f

    .line 124
    invoke-virtual {v1}, Lfg;->e()I

    move-result v7

    .line 125
    iget-object v0, v13, Llg;->P:[Lfg;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lfg;->e()I

    move-result v8

    .line 126
    iget-object v1, v1, Lfg;->i:Lle0;

    iget-object v10, v2, Lfg;->i:Lle0;

    const/4 v11, 0x5

    move-object/from16 v0, p1

    move-object v2, v4

    move v3, v7

    move v4, v6

    move-object v6, v10

    move v7, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lax;->c(Lle0;Lle0;IFLle0;Lle0;II)V

    :cond_4d
    return-void
.end method

.method public static b(Lmg;Lax;Ljava/util/ArrayList;I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 4
    iget v1, p0, Lmg;->N0:I

    .line 6
    iget-object v2, p0, Lmg;->Q0:[Lme;

    .line 8
    const/4 v3, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v1, p0, Lmg;->O0:I

    .line 12
    iget-object v2, p0, Lmg;->P0:[Lme;

    .line 14
    const/4 v3, 0x2

    .line 15
    :goto_0
    if-ge v0, v1, :cond_3

    .line 17
    aget-object v4, v2, v0

    .line 19
    invoke-virtual {v4}, Lme;->a()V

    .line 22
    if-eqz p2, :cond_1

    .line 24
    iget-object v5, v4, Lme;->a:Llg;

    .line 26
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_2

    .line 32
    :cond_1
    invoke-static {p0, p1, p3, v3, v4}, Lle;->a(Lmg;Lax;IILme;)V

    .line 35
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return-void
.end method
